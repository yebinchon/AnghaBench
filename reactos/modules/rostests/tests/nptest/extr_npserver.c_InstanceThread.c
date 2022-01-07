
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ LPVOID ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 int BUFSIZE ;
 int CloseHandle (scalar_t__) ;
 int DisconnectNamedPipe (scalar_t__) ;
 int FlushFileBuffers (scalar_t__) ;
 int GetAnswerToRequest (int *,int *,scalar_t__*) ;
 scalar_t__ ReadFile (scalar_t__,int *,int,scalar_t__*,int *) ;
 scalar_t__ WriteFile (scalar_t__,int *,scalar_t__,scalar_t__*,int *) ;

VOID InstanceThread (LPVOID lpvParam)
{
   CHAR chRequest[BUFSIZE];
   CHAR chReply[BUFSIZE];
   DWORD cbBytesRead, cbReplyBytes, cbWritten;
   BOOL fSuccess;
   HANDLE hPipe;

   hPipe = (HANDLE)lpvParam;
   while (1)
     {
 fSuccess = ReadFile(hPipe,
       chRequest,
       BUFSIZE,
       &cbBytesRead,
       ((void*)0));
 if (!fSuccess || cbBytesRead == 0)
   break;

 GetAnswerToRequest(chRequest, chReply, &cbReplyBytes);

 fSuccess = WriteFile(hPipe,
        chReply,
        cbReplyBytes,
        &cbWritten,
        ((void*)0));
 if (!fSuccess || cbReplyBytes != cbWritten)
   break;
    }

   FlushFileBuffers(hPipe);
   DisconnectNamedPipe(hPipe);
   CloseHandle(hPipe);
}
