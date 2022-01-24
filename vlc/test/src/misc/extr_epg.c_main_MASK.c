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
typedef  int /*<<< orphan*/  vlc_epg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10( void )
{
    FUNC6();

    int i=1;

    /* Simple insert/current test */
    FUNC5("--test %d\n", i++);
    vlc_epg_t *p_epg = FUNC8( 0, 0 );
    FUNC1(p_epg);
    FUNC0( p_epg,  42, 20, "A" );
    FUNC0( p_epg,  62, 20, "B" );
    FUNC0( p_epg,  82, 20, "C" );
    FUNC0( p_epg, 102, 20, "D" );
    FUNC4( p_epg );
    FUNC3( p_epg, "ABCD", 4 );
    FUNC2( p_epg, NULL );

    FUNC9( p_epg, 82 );
    FUNC2( p_epg, "C" );

    FUNC7( p_epg );


    /* Test reordering / head/tail inserts */
    FUNC5("--test %d\n", i++);
    p_epg = FUNC8( 0, 0 );
    FUNC1(p_epg);
    FUNC0( p_epg,  82, 20, "C" );
    FUNC0( p_epg,  62, 20, "B" );
    FUNC0( p_epg, 102, 20, "D" );
    FUNC0( p_epg,  42, 20, "A" );
    FUNC4( p_epg );
    FUNC3( p_epg, "ABCD", 4 );
    FUNC7( p_epg );

    /* Test reordering/bisect lookup on insert */
    FUNC5("--test %d\n", i++);
    p_epg = FUNC8( 0, 0 );
    FUNC1(p_epg);
    FUNC0( p_epg, 142, 20, "F" );
    FUNC0( p_epg, 122, 20, "E" );
    FUNC0( p_epg, 102, 20, "D" );
    FUNC0( p_epg,  82, 20, "C" );
    FUNC0( p_epg,  42, 20, "A" );
    FUNC0( p_epg,  62, 20, "B" );
    FUNC4( p_epg );
    FUNC3( p_epg, "ABCDEF", 6 );
    FUNC7( p_epg );

    /* Test deduplication and current pointer rebasing on insert */
    FUNC5("--test %d\n", i++);
    p_epg = FUNC8( 0, 0 );
    FUNC1(p_epg);
    FUNC0( p_epg,  62, 20, "E" );
    FUNC0( p_epg,  62, 20, "F" );
    FUNC0( p_epg,  42, 20, "A" );
    FUNC9( p_epg, 62 );
    FUNC0( p_epg,  82, 20, "C" );
    FUNC0( p_epg,  62, 20, "B" );
    FUNC0( p_epg, 102, 20, "D" );
    FUNC4( p_epg );
    FUNC3( p_epg, "ABCD", 4 );
    FUNC2( p_epg, "B" );
    FUNC7( p_epg );

    return 0;
}