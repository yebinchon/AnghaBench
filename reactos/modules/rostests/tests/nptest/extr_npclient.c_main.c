
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPVOID ;
typedef char* LPTSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef char CHAR ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (char*,int,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_PIPE_BUSY ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MyErrExit (char*) ;
 int OPEN_EXISTING ;
 scalar_t__ PIPE_READMODE_MESSAGE ;
 scalar_t__ ReadFile (scalar_t__,char*,int,scalar_t__*,int *) ;
 int STD_OUTPUT_HANDLE ;
 scalar_t__ SetNamedPipeHandleState (scalar_t__,scalar_t__*,int *,int *) ;
 int WaitNamedPipe (char*,int) ;
 scalar_t__ WriteFile (scalar_t__,char*,scalar_t__,scalar_t__*,int *) ;
 scalar_t__ strlen (char*) ;

int main(int argc, char *argv[])
{
   HANDLE hPipe;
   LPVOID lpvMessage;
   CHAR chBuf[512];
   BOOL fSuccess;
   DWORD cbRead, cbWritten, dwMode;
   LPTSTR lpszPipename = "\\\\.\\pipe\\mynamedpipe";



   while (1)
   {
      hPipe = CreateFile(
         lpszPipename,
         GENERIC_READ |
         GENERIC_WRITE,
         0,
         ((void*)0),
         OPEN_EXISTING,
         0,
         ((void*)0));



      if (hPipe != INVALID_HANDLE_VALUE)
         break;



      if (GetLastError() != ERROR_PIPE_BUSY)
         MyErrExit("Could not open pipe");



      if (! WaitNamedPipe(lpszPipename, 20000) )
         MyErrExit("Could not open pipe");
   }



   dwMode = PIPE_READMODE_MESSAGE;
   fSuccess = SetNamedPipeHandleState(
      hPipe,
      &dwMode,
      ((void*)0),
      ((void*)0));
   if (!fSuccess)
      MyErrExit("SetNamedPipeHandleState");



   lpvMessage = (argc > 1) ? argv[1] : "default message";

   fSuccess = WriteFile(
      hPipe,
      lpvMessage,
      strlen(lpvMessage) + 1,
      &cbWritten,
      ((void*)0));
   if (! fSuccess)
      MyErrExit("WriteFile");

   do
   {


      fSuccess = ReadFile(
         hPipe,
         chBuf,
         512,
         &cbRead,
         ((void*)0));

      if (! fSuccess && GetLastError() != ERROR_MORE_DATA)
         break;



      if (! WriteFile(GetStdHandle(STD_OUTPUT_HANDLE),
         chBuf, cbRead, &cbWritten, ((void*)0)))
      {
         break;
      }

   } while (! fSuccess);

   CloseHandle(hPipe);

   return 0;
}
