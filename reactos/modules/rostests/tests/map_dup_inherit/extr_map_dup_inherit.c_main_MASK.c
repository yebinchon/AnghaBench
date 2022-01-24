#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  pi ;
struct TYPE_6__ {void* hProcess; int /*<<< orphan*/  hThread; } ;
typedef  TYPE_1__ STARTUPINFO ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FILE_MAP_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  HANDLE_FLAG_INHERIT ; 
 int /*<<< orphan*/  INFINITE ; 
 void* INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int PAGE_READWRITE ; 
 int SEC_RESERVE ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*,void*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14( int argc, char **argv ) {
  HANDLE file_view;
  void *file_map;
  int *x;

  FUNC11( stderr, "%d: Starting\n", FUNC3() );

  if( argc == 2 ) {
    #ifdef WIN64
        file_map = (void *)_atoi64(argv[1]);
    #else
        file_map = (void *)FUNC6(FUNC10(argv[1]));
    #endif
  } else {
    file_map = FUNC1( INVALID_HANDLE_VALUE,
				  NULL,
				  PAGE_READWRITE | SEC_RESERVE,
				  0, 0x1000, NULL );
    if( !FUNC5( file_map,
			       HANDLE_FLAG_INHERIT,
			       HANDLE_FLAG_INHERIT ) ) {
      FUNC11( stderr, "%d: Could not make handle inheritable.\n",
	       FUNC3() );
      return 100;
    }
  }

  if( !file_map ) {
    FUNC11( stderr, "%d: Could not create anonymous file map.\n",
	     FUNC3() );
    return 1;
  }

  file_view = FUNC4( file_map,
			     FILE_MAP_WRITE,
			     0,
			     0,
			     0x1000 );

  if( !file_view ) {
    FUNC11( stderr, "%d: Could not map view of file.\n",
	     FUNC3() );
    if (file_map != INVALID_HANDLE_VALUE)
        FUNC0(file_map);
    return 2;
  }

  if( !FUNC7( file_view, 0x1000, MEM_COMMIT, PAGE_READWRITE ) ) {
    FUNC11( stderr, "%d: VirtualAlloc failed to realize the page.\n",
	     FUNC3() );
    if (file_map != INVALID_HANDLE_VALUE)
        FUNC0(file_map);
    return 3;
  }

  x = (int *)file_view;
  x[0] = 0x12345678;

  if( x[0] != 0x12345678 ) {
    FUNC11( stderr, "%d: Can't write to the memory (%08x != 0x12345678)\n",
	     FUNC3(), x[0] );
    return 4;
  }

  if( argc == 1 ) {
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    char cmdline[1000];

    FUNC12( &si, 0, sizeof( si ) );
    FUNC12( &pi, 0, sizeof( pi ) );

    FUNC13(cmdline,"%s %p", argv[0], file_map);
	FUNC0(file_map);

    if( !FUNC2(NULL, cmdline, NULL, NULL, TRUE, 0, NULL, NULL,
		       &si, &pi ) ) {
      FUNC11( stderr, "%d: Could not create child process.\n",
	       FUNC3() );
      if (pi.hProcess != INVALID_HANDLE_VALUE)
          FUNC0(pi.hProcess);

      return 5;
    }

    if( FUNC8( pi.hThread, INFINITE ) != WAIT_OBJECT_0 ) {
      FUNC11( stderr, "%d: Failed to wait for child process to terminate.\n",
	       FUNC3() );
      if (pi.hProcess != INVALID_HANDLE_VALUE)
          FUNC0(pi.hProcess);
      return 6;
    }

    if (pi.hProcess != INVALID_HANDLE_VALUE)
        FUNC0(pi.hProcess);

  }

  return 0;
}