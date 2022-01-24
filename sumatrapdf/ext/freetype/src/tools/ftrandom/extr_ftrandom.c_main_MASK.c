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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  forever ;
typedef  int FT_F26Dot6 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char**) ; 
 char** FUNC2 (size_t,int) ; 
 int check_outlines ; 
 char** default_dir_list ; 
 char** default_ext_list ; 
 unsigned int error_count ; 
 double error_fraction ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int font_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int nohints ; 
 int rasterize ; 
 char* results_dir ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int FUNC9 (char*,char**) ; 
 scalar_t__ FUNC10 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

int
  FUNC13( int     argc,
        char**  argv )
  {
    char    **dirs, **exts;
    int     dcnt = 0, ecnt = 0, rset = false, allexts = false;
    int     i;
    time_t  now;
    char*   testfile = NULL;


    dirs = FUNC2( (size_t)( argc + 1 ), sizeof ( char ** ) );
    exts = FUNC2( (size_t)( argc + 1 ), sizeof ( char ** ) );

    for ( i = 1; i < argc; i++ )
    {
      char*  pt = argv[i];
      char*  end;


      if ( pt[0] == '-' && pt[1] == '-' )
        pt++;

      if ( FUNC8( pt, "-all" ) == 0 )
        allexts = true;
      else if ( FUNC8( pt, "-check-outlines" ) == 0 )
        check_outlines = true;
      else if ( FUNC8( pt, "-dir" ) == 0 )
        dirs[dcnt++] = argv[++i];
      else if ( FUNC8( pt, "-error-count" ) == 0 )
      {
        if ( !rset )
          error_fraction = 0.0;
        rset = true;
        error_count = (unsigned int)FUNC10( argv[++i], &end, 10 );
        if ( *end != '\0' )
        {
          FUNC4( stderr, "Bad value for error-count: %s\n", argv[i] );
          FUNC3( 1 );
        }
      }
      else if ( FUNC8( pt, "-error-fraction" ) == 0 )
      {
        if ( !rset )
          error_count = 0;
        rset = true;
        error_fraction = FUNC9( argv[++i], &end );
        if ( *end != '\0' )
        {
          FUNC4( stderr, "Bad value for error-fraction: %s\n", argv[i] );
          FUNC3( 1 );
        }
        if ( error_fraction < 0.0 || error_fraction > 1.0 )
        {
          FUNC4( stderr, "error-fraction must be in the range [0;1]\n" );
          FUNC3( 1 );
        }
      }
      else if ( FUNC8( pt, "-ext" ) == 0 )
        exts[ecnt++] = argv[++i];
      else if ( FUNC8( pt, "-help" ) == 0 )
      {
        FUNC12( stdout, argv[0] );
        FUNC3( 0 );
      }
      else if ( FUNC8( pt, "-nohints" ) == 0 )
        nohints = true;
      else if ( FUNC8( pt, "-rasterize" ) == 0 )
        rasterize = true;
      else if ( FUNC8( pt, "-results" ) == 0 )
        results_dir = argv[++i];
      else if ( FUNC8( pt, "-size" ) == 0 )
      {
        font_size = (FT_F26Dot6)( FUNC9( argv[++i], &end ) * 64 );
        if ( *end != '\0' || font_size < 64 )
        {
          FUNC4( stderr, "Bad value for size: %s\n", argv[i] );
          FUNC3( 1 );
        }
      }
      else if ( FUNC8( pt, "-test" ) == 0 )
        testfile = argv[++i];
      else
      {
        FUNC12( stderr, argv[0] );
        FUNC3( 1 );
      }
    }

    if ( allexts )
    {
      FUNC5( exts );
      exts = NULL;
    }
    else if ( ecnt == 0 )
    {
      FUNC5( exts );
      exts = default_ext_list;
    }

    if ( dcnt == 0 )
    {
      FUNC5( dirs );
      dirs = default_dir_list;
    }

    if ( testfile )
      FUNC0( testfile );         /* This should never return */

    FUNC11( &now );
    FUNC7( (unsigned int)now );

    FUNC1( dirs, exts );
    FUNC6( results_dir, 0755 );

    forever
      FUNC14();

    return 0;
  }