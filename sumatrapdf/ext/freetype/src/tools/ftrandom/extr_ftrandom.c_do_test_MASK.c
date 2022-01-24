#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  abort_test ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int child_pid ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int fcnt ; 
 int /*<<< orphan*/ * fontlist ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* results_dir ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC13( void )
  {
    int         i        = FUNC7( 0, (int)( fcnt - 1 ) );
    static int  test_num = 0;
    char        buffer[1024];


    FUNC10( buffer, "%s/test%d", results_dir, test_num++ );

    if ( FUNC3 ( &fontlist[i], buffer ) )
    {
      FUNC9( SIGALRM, abort_test );
      /* Anything that takes more than 20 seconds */
      /* to parse and/or rasterize is an error.   */
      FUNC2( 20 );
      if ( ( child_pid = FUNC5() ) == 0 )
        FUNC0( buffer );
      else if ( child_pid != -1 )
      {
        int  status;


        FUNC12( child_pid, &status, 0 );
        FUNC2( 0 );
        if ( FUNC1 ( status ) )
          FUNC8( "Error found in file `%s'\n", buffer );
        else
          FUNC11( buffer );
      }
      else
      {
        FUNC6( stderr, "Can't fork test case.\n" );
        FUNC4( 1 );
      }
      FUNC2( 0 );
    }
  }