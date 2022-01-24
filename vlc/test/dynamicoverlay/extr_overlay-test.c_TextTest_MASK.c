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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 float M_PI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (float) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9( FILE *p_cmd, FILE *p_res, int i_overlay ) {
    FUNC5( "Sweeping (text) alpha..." );
    for( int i_alpha = 0xFF; i_alpha >= -0xFF ; i_alpha -= 8 ) {
        FUNC1( p_cmd, p_res, i_overlay, FUNC4( i_alpha ) );
        FUNC8( 20000 );
    }
    FUNC1( p_cmd, p_res, i_overlay, 255 );
    FUNC5( " done\n" );

    FUNC5( "Sweeping colors..." );
    for( int i_red = 0xFF; i_red >= 0x00 ; i_red -= 8 ) {
        FUNC2( p_cmd, p_res, i_overlay, i_red, 0xFF, 0xFF );
        FUNC8( 20000 );
    }
    for( int i_green = 0xFF; i_green >= 0x00 ; i_green -= 8 ) {
        FUNC2( p_cmd, p_res, i_overlay, 0x00, i_green, 0xFF );
        FUNC8( 20000 );
    }
    for( int i_blue = 0xFF; i_blue >= 0x00 ; i_blue -= 8 ) {
        FUNC2( p_cmd, p_res, i_overlay, 0x00, 0x00, i_blue );
        FUNC8( 20000 );
    }
    FUNC2( p_cmd, p_res, i_overlay, 0x00, 0x00, 0x00 );
    FUNC5( " done\n" );

    FUNC5( "Getting size..." );
    int i_basesize = FUNC0( p_cmd, p_res, i_overlay );
    FUNC5( " done. Size is %d\n", i_basesize );

    FUNC5( "Sweeping size..." );
    for( float f_theta = 0; f_theta <= M_PI ; f_theta += M_PI / 128.0 ) {
        FUNC3( p_cmd, p_res, i_overlay,
                     i_basesize * ( 1 + 3 * FUNC6( f_theta ) ) );
        FUNC8( 20000 );
    }
    FUNC3( p_cmd, p_res, i_overlay, i_basesize );
    FUNC5( " done\n" );

    FUNC7( 5 );
}