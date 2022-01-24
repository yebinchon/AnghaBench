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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int M_PI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 double FUNC7 (float) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 double FUNC9 (float) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12( FILE *p_cmd, FILE *p_res, int i_overlay ) {
    FUNC8( "Activating overlay..." );
    FUNC4( p_cmd, p_res, i_overlay, 1 );
    FUNC8( " done\n" );

    FUNC8( "Sweeping alpha..." );
    for( int i_alpha = 0xFF; i_alpha >= -0xFF ; i_alpha -= 8 ) {
        FUNC2( p_cmd, p_res, i_overlay, FUNC6( i_alpha ) );
        FUNC11( 20000 );
    }
    FUNC2( p_cmd, p_res, i_overlay, 255 );
    FUNC8( " done\n" );

    FUNC8( "Circle motion..." );
    for( float f_theta = 0; f_theta <= 2 * M_PI ; f_theta += M_PI / 64.0 ) {
        FUNC3( p_cmd, p_res, i_overlay,
                     (int)( - FUNC7( f_theta ) * 100.0 + 100.0 ),
                     (int)( - FUNC9( f_theta ) * 100.0 + 100.0 ) );
        FUNC11( 20000 );
    }
    FUNC3( p_cmd, p_res, i_overlay, 0, 100 );
    FUNC8( " done\n" );

    FUNC8( "Atomic motion..." );
    FUNC5( p_cmd, p_res );
    FUNC3( p_cmd, NULL, i_overlay, 200, 50 );
    FUNC10( 1 );
    FUNC3( p_cmd, NULL, i_overlay, 0, 0 );
    FUNC1( p_cmd, p_res );
    FUNC0( p_res );
    FUNC0( p_res );
    FUNC8( " done\n" );

    FUNC10( 5 );
}