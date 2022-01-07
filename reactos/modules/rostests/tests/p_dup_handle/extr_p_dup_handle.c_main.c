
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int si ;
typedef int pi ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_6__ {int hThread; } ;
typedef TYPE_1__ STARTUPINFO ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef scalar_t__ HANDLE ;


 int CreateProcess (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int ,int ,int ) ;
 scalar_t__ GetCurrentProcess () ;
 int GetCurrentProcessId () ;
 int INFINITE ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 scalar_t__ atoi (char*) ;
 int fprintf (int ,char*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int sprintf (char*,char*,char*,scalar_t__) ;
 int stderr ;

int main( int argc, char **argv ) {
  HANDLE h_process;
  HANDLE h_process_in_parent;

  fprintf( stderr, "%lu: Starting\n", GetCurrentProcessId() );

  if( argc == 2 ) {
    h_process = (HANDLE)(ULONG_PTR)atoi(argv[1]);
  } else {
    if( !DuplicateHandle( GetCurrentProcess(),
     GetCurrentProcess(),
     GetCurrentProcess(),
     &h_process,
     0,
     TRUE,
     DUPLICATE_SAME_ACCESS) ) {
      fprintf( stderr, "%lu: Could not duplicate my own process handle.\n",
        GetCurrentProcessId() );
      return 101;
    }
  }

  if( argc == 1 ) {
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    char cmdline[1000];

    memset( &si, 0, sizeof( si ) );
    memset( &pi, 0, sizeof( pi ) );

    sprintf( cmdline, "%s %p", argv[0], h_process );
    if( !CreateProcess(((void*)0), cmdline, ((void*)0), ((void*)0), TRUE, 0, ((void*)0), ((void*)0),
         &si, &pi ) ) {
      fprintf( stderr, "%lu: Could not create child process.\n",
        GetCurrentProcessId() );
      return 5;
    }

    if( WaitForSingleObject( pi.hThread, INFINITE ) != WAIT_OBJECT_0 ) {
      fprintf( stderr, "%lu: Failed to wait for child process to terminate.\n",
        GetCurrentProcessId() );
      return 6;
    }
  } else {
    if( !DuplicateHandle( GetCurrentProcess(),
     GetCurrentProcess(),
     h_process,
     &h_process_in_parent,
     0,
     TRUE,
     DUPLICATE_SAME_ACCESS) ) {
      fprintf( stderr, "%lu: Could not duplicate my handle into the parent.\n",
        GetCurrentProcessId() );
      return 102;
    }
  }

  return 0;
}
