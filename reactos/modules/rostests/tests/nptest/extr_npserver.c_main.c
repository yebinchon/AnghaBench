
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int LPTSTR ;
typedef int LPTHREAD_START_ROUTINE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int BUFSIZE ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ ConnectNamedPipe (scalar_t__,int *) ;
 scalar_t__ CreateNamedPipe (int ,int ,int,int ,int ,int ,int ,int *) ;
 scalar_t__ CreateThread (int *,int ,int ,int ,int ,int *) ;
 int DisconnectNamedPipe (scalar_t__) ;
 scalar_t__ ERROR_PIPE_CONNECTED ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ InstanceThread ;
 int MyErrExit (char*) ;
 int PIPE_ACCESS_DUPLEX ;
 int PIPE_READMODE_MESSAGE ;
 int PIPE_TIMEOUT ;
 int PIPE_TYPE_MESSAGE ;
 int PIPE_UNLIMITED_INSTANCES ;
 int PIPE_WAIT ;
 int TEXT (char*) ;
 int TRUE ;
 int printf (char*) ;

int main(int argc, char *argv[])
{
   BOOL fConnected;
   DWORD dwThreadId;
   HANDLE hPipe, hThread;
   LPTSTR lpszPipename = TEXT("\\\\.\\pipe\\mynamedpipe");



 hPipe = CreateNamedPipe(lpszPipename,
    PIPE_ACCESS_DUPLEX,
    PIPE_TYPE_MESSAGE |
    PIPE_READMODE_MESSAGE |
    PIPE_WAIT,
    PIPE_UNLIMITED_INSTANCES,
    BUFSIZE,
    BUFSIZE,
    PIPE_TIMEOUT,
    ((void*)0));
 if (hPipe == INVALID_HANDLE_VALUE)
   {
      printf("CreateNamedPipe() failed\n");
      return 0;
   }

 fConnected = ConnectNamedPipe(hPipe,
          ((void*)0)) ? TRUE : (GetLastError () ==
         ERROR_PIPE_CONNECTED);
 if (fConnected)
   {
      printf("Pipe connected!\n");

      DisconnectNamedPipe(hPipe);
   }
 else
   {

   }


   CloseHandle(hPipe);

   return 0;
}
