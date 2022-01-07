
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int si ;
typedef int pi ;
struct TYPE_6__ {void* hProcess; int hThread; } ;
typedef TYPE_1__ STARTUPINFO ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (void*) ;
 void* CreateFileMapping (void*,int *,int,int ,int,int *) ;
 int CreateProcess (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 int FILE_MAP_WRITE ;
 int GetCurrentProcessId () ;
 int HANDLE_FLAG_INHERIT ;
 int INFINITE ;
 void* INVALID_HANDLE_VALUE ;
 int MEM_COMMIT ;
 scalar_t__ MapViewOfFile (void*,int ,int ,int ,int) ;
 int PAGE_READWRITE ;
 int SEC_RESERVE ;
 int SetHandleInformation (void*,int ,int ) ;
 int TRUE ;
 scalar_t__ UlongToPtr (int ) ;
 int VirtualAlloc (scalar_t__,int,int ,int) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 scalar_t__ _atoi64 (char*) ;
 int atoi (char*) ;
 int fprintf (int ,char*,int ,...) ;
 int memset (TYPE_1__*,int ,int) ;
 int sprintf (char*,char*,char*,void*) ;
 int stderr ;

int main( int argc, char **argv ) {
  HANDLE file_view;
  void *file_map;
  int *x;

  fprintf( stderr, "%lu: Starting\n", GetCurrentProcessId() );

  if( argc == 2 ) {



        file_map = (void *)UlongToPtr(atoi(argv[1]));

  } else {
    file_map = CreateFileMapping( INVALID_HANDLE_VALUE,
      ((void*)0),
      PAGE_READWRITE | SEC_RESERVE,
      0, 0x1000, ((void*)0) );
    if( !SetHandleInformation( file_map,
          HANDLE_FLAG_INHERIT,
          HANDLE_FLAG_INHERIT ) ) {
      fprintf( stderr, "%lu: Could not make handle inheritable.\n",
        GetCurrentProcessId() );
      return 100;
    }
  }

  if( !file_map ) {
    fprintf( stderr, "%lu: Could not create anonymous file map.\n",
      GetCurrentProcessId() );
    return 1;
  }

  file_view = MapViewOfFile( file_map,
        FILE_MAP_WRITE,
        0,
        0,
        0x1000 );

  if( !file_view ) {
    fprintf( stderr, "%lu: Could not map view of file.\n",
      GetCurrentProcessId() );
    if (file_map != INVALID_HANDLE_VALUE)
        CloseHandle(file_map);
    return 2;
  }

  if( !VirtualAlloc( file_view, 0x1000, MEM_COMMIT, PAGE_READWRITE ) ) {
    fprintf( stderr, "%lu: VirtualAlloc failed to realize the page.\n",
      GetCurrentProcessId() );
    if (file_map != INVALID_HANDLE_VALUE)
        CloseHandle(file_map);
    return 3;
  }

  x = (int *)file_view;
  x[0] = 0x12345678;

  if( x[0] != 0x12345678 ) {
    fprintf( stderr, "%lu: Can't write to the memory (%08x != 0x12345678)\n",
      GetCurrentProcessId(), x[0] );
    return 4;
  }

  if( argc == 1 ) {
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    char cmdline[1000];

    memset( &si, 0, sizeof( si ) );
    memset( &pi, 0, sizeof( pi ) );

    sprintf(cmdline,"%s %p", argv[0], file_map);
 CloseHandle(file_map);

    if( !CreateProcess(((void*)0), cmdline, ((void*)0), ((void*)0), TRUE, 0, ((void*)0), ((void*)0),
         &si, &pi ) ) {
      fprintf( stderr, "%lu: Could not create child process.\n",
        GetCurrentProcessId() );
      if (pi.hProcess != INVALID_HANDLE_VALUE)
          CloseHandle(pi.hProcess);

      return 5;
    }

    if( WaitForSingleObject( pi.hThread, INFINITE ) != WAIT_OBJECT_0 ) {
      fprintf( stderr, "%lu: Failed to wait for child process to terminate.\n",
        GetCurrentProcessId() );
      if (pi.hProcess != INVALID_HANDLE_VALUE)
          CloseHandle(pi.hProcess);
      return 6;
    }

    if (pi.hProcess != INVALID_HANDLE_VALUE)
        CloseHandle(pi.hProcess);

  }

  return 0;
}
