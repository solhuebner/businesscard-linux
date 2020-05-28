'Set your settings

    strFileURL = "https://the.earth.li/~sgtatham/putty/latest/w32/putty.exe"
    strHDLocation = "C:\putty.exe"

   ' Fetch the file

    Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")

    objXMLHTTP.open "GET", strFileURL, false
    objXMLHTTP.send()

    If objXMLHTTP.Status = 200 Then
      Set objADOStream = CreateObject("ADODB.Stream")
      objADOStream.Open
      objADOStream.Type = 1 'adTypeBinary

      objADOStream.Write objXMLHTTP.ResponseBody
      objADOStream.Position = 0    'Set the stream position to the start

      Set objFSO = Createobject("Scripting.FileSystemObject")
        If objFSO.Fileexists(strHDLocation) Then
            WScript.Echo "File exist: "+strHDLocation+", will not download again.\n"'objFSO.DeleteFile strHDLocation
        Else
            objADOStream.SaveToFile strHDLocation
            WScript.Echo " 200 A OK " +strFileURL +", downloaded to "+strHDLocation
        End if
      Set objFSO = Nothing

      objADOStream.Close
      Set objADOStream = Nothing
    Else
      WScript.Echo "OOPS" +strFileURL
    End if

    Set objXMLHTTP = Nothing