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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ EEXIST ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int HEIGHT ; 
 int /*<<< orphan*/  IPC_PRIVATE ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int TEXTSIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int WIDTH ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 void* p_imageRGBA ; 
 void* p_text ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 void* FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC13( int i_argc, char *ppsz_argv[] ) {
    if( i_argc != 3 ) {
        FUNC9( "Incorrect number of parameters.\n"
                "Usage is: %s command-fifo response-fifo\n", ppsz_argv[0] );
        FUNC6( -2 );
    }

    FUNC9( "Creating shared memory for RGBA..." );
    int i_shmRGBA = FUNC12( IPC_PRIVATE, WIDTH * HEIGHT * 4, S_IRWXU );
    if( i_shmRGBA == -1 ) {
        FUNC9( " failed\n" );
        FUNC6( -1 );
    }
    FUNC9( " done, ID is %d. Text...", i_shmRGBA );
    int i_shmText = FUNC12( IPC_PRIVATE, TEXTSIZE, S_IRWXU );
    if( i_shmText == -1 ) {
        FUNC9( " failed\n" );
        FUNC6( -1 );
    }
    FUNC9( " done, ID is %d\n", i_shmText );

    FUNC9( "Attaching shared memory for RGBA..." );
    p_imageRGBA = FUNC10( i_shmRGBA, NULL, 0 );
    if( p_imageRGBA == (void*)-1 ) {
        FUNC9( " failed\n" );
        FUNC6( -1 );
    }
    FUNC9( " done. Text..." );
    p_text = FUNC10( i_shmText, NULL, 0 );
    if( p_text == (void*)-1 ) {
        FUNC9( " failed\n" );
        FUNC6( -1 );
    }
    FUNC9( " done\n" );

    FUNC9( "Queueing shared memory for destruction, RGBA..." );
    if( FUNC11( i_shmRGBA, IPC_RMID, 0 ) == -1 ) {
        FUNC9( " failed\n" );
        FUNC6( -1 );
    }
    FUNC9( " done. Text..." );
    if( FUNC11( i_shmText, IPC_RMID, 0 ) == -1 ) {
        FUNC9( " failed\n" );
        FUNC6( -1 );
    }
    FUNC9( " done\n" );

    FUNC9( "Generating data..." );
    FUNC1();
    FUNC9( " done\n" );

    FUNC9( "Making FIFOs..." );
    if( FUNC8( ppsz_argv[1], S_IRWXU ) ) {
        if( errno != EEXIST ) {
            FUNC9( " failed\n" );
            FUNC6( -1 );
        }
        FUNC9( " input already exists..." );
    }
    if( FUNC8( ppsz_argv[2], S_IRWXU ) ) {
        if( errno != EEXIST ) {
            FUNC9( " failed\n" );
            FUNC6( -1 );
        }
        FUNC9( " output already exists..." );
    }
    FUNC9( " done\n" );

    FUNC9( "Please make sure vlc is running.\n"
            "You should append parameters similar to the following:\n"
            "--sub-source overlay{input=%s,output=%s}\n",
            ppsz_argv[1], ppsz_argv[2] );

    FUNC9( "Opening FIFOs..." );
    FILE *p_cmd = FUNC7( ppsz_argv[1], "w" );
    if( p_cmd == NULL ) {
        FUNC9( " failed\n" );
        FUNC6( -1 );
    }
    FILE *p_res = FUNC7( ppsz_argv[2], "r" );
    if( p_res == NULL ) {
        FUNC9( " failed\n" );
        FUNC6( -1 );
    }
    FUNC9( " done\n" );

    int i_overlay_image = FUNC4( p_cmd, p_res );
    int i_overlay_text = FUNC4( p_cmd, p_res );
    FUNC2( p_cmd, p_res, i_overlay_image, WIDTH, HEIGHT, "RGBA",
                   i_shmRGBA );
    FUNC2( p_cmd, p_res, i_overlay_text, TEXTSIZE, 1, "TEXT",
                   i_shmText );

    FUNC0( p_cmd, p_res, i_overlay_image );
    FUNC0( p_cmd, p_res, i_overlay_text );
    FUNC5( p_cmd, p_res, i_overlay_text );

    FUNC3( p_cmd, p_res, i_overlay_image );
    FUNC3( p_cmd, p_res, i_overlay_text );
}