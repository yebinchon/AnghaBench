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
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_6__ {int /*<<< orphan*/  hThread; } ;
typedef  TYPE_1__ STARTUPINFO ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9( int argc, char **argv ) {
  HANDLE h_process;
  HANDLE h_process_in_parent;

  FUNC6( stderr, "%d: Starting\n", FUNC3() );

  if( argc == 2 ) {
    h_process = (HANDLE)(ULONG_PTR)FUNC5(argv[1]);
  } else {
    if( !FUNC1( FUNC2(),
			  FUNC2(),
			  FUNC2(),
			  &h_process,
			  0,
			  TRUE,
			  DUPLICATE_SAME_ACCESS) ) {
      FUNC6( stderr, "%d: Could not duplicate my own process handle.\n",
	       FUNC3() );
      return 101;
    }
  }

  if( argc == 1 ) {
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    char cmdline[1000];

    FUNC7( &si, 0, sizeof( si ) );
    FUNC7( &pi, 0, sizeof( pi ) );

    FUNC8( cmdline, "%s %p", argv[0], h_process );
    if( !FUNC0(NULL, cmdline, NULL, NULL, TRUE, 0, NULL, NULL,
		       &si, &pi ) ) {
      FUNC6( stderr, "%d: Could not create child process.\n",
	       FUNC3() );
      return 5;
    }

    if( FUNC4( pi.hThread, INFINITE ) != WAIT_OBJECT_0 ) {
      FUNC6( stderr, "%d: Failed to wait for child process to terminate.\n",
	       FUNC3() );
      return 6;
    }
  } else {
    if( !FUNC1( FUNC2(),
			  FUNC2(),
			  h_process,
			  &h_process_in_parent,
			  0,
			  TRUE,
			  DUPLICATE_SAME_ACCESS) ) {
      FUNC6( stderr, "%d: Could not duplicate my handle into the parent.\n",
	       FUNC3() );
      return 102;
    }
  }

  return 0;
}