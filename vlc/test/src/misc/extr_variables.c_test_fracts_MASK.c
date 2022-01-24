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
typedef  int /*<<< orphan*/  libvlc_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char** psz_var_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int*,unsigned int*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 

__attribute__((used)) static void FUNC5( libvlc_int_t *p_libvlc )
{
    const char *name = psz_var_name[0];
    unsigned num, den;

    FUNC1( p_libvlc, name, VLC_VAR_STRING );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) != 0 );

    FUNC4( p_libvlc, name, "123garbage" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) != 0 );

    FUNC4( p_libvlc, name, "4/5garbage" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) != 0 );

    FUNC4( p_libvlc, name, "6.7garbage" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) != 0 );

    FUNC4( p_libvlc, name, "." );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 0 && den == 1 );

    FUNC4( p_libvlc, name, "010" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 10 && den == 1 );

    FUNC4( p_libvlc, name, "30" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 30 && den == 1 );

    FUNC4( p_libvlc, name, "30.0" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 30 && den == 1 );

    FUNC4( p_libvlc, name, "030.030" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 3003 && den == 100 );

    FUNC4( p_libvlc, name, "60/2" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 30 && den == 1 );

    FUNC4( p_libvlc, name, "29.97" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 2997 && den == 100 );

    FUNC4( p_libvlc, name, "30000/1001" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 30000 && den == 1001 );

    FUNC4( p_libvlc, name, ".125" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 1 && den == 8 );

    FUNC4( p_libvlc, name, "12:9" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 4 && den == 3 );

    FUNC4( p_libvlc, name, "000000/00000000" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 0 && den == 0 );

    FUNC4( p_libvlc, name, "12345/0" );
    FUNC0( FUNC3( p_libvlc, &num, &den, name ) == 0 );
    FUNC0( num == 1 && den == 0 );

    FUNC2( p_libvlc, name );
}