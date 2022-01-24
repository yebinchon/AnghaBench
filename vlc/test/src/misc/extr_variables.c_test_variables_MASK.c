#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_int_t ;
struct TYPE_3__ {int /*<<< orphan*/ * p_libvlc_int; } ;
typedef  TYPE_1__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14( libvlc_instance_t *p_vlc )
{
    libvlc_int_t *p_libvlc = p_vlc->p_libvlc_int;
    FUNC0( FUNC13( NULL ) );

    FUNC11( "Testing for integers\n" );
    FUNC9( p_libvlc );

    FUNC11( "Testing for booleans\n" );
    FUNC2( p_libvlc );

    FUNC11( "Testing for floats\n" );
    FUNC7( p_libvlc );

    FUNC11( "Testing for rationals\n" );
    FUNC8( p_libvlc );

    FUNC11( "Testing for strings\n" );
    FUNC12( p_libvlc );

    FUNC11( "Testing for addresses\n" );
    FUNC1( p_libvlc );

    FUNC11( "Testing the callbacks\n" );
    FUNC3( p_libvlc );

    FUNC11( "Testing the limits\n" );
    FUNC10( p_libvlc );

    FUNC11( "Testing choices\n" );
    FUNC5( p_libvlc );

    FUNC11( "Testing var_Change()\n" );
    FUNC4( p_libvlc );

    FUNC11( "Testing type at creation\n" );
    FUNC6( p_libvlc );
}