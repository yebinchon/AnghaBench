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
 unsigned int VAR_COUNT ; 
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** psz_var_name ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC8( libvlc_int_t *p_libvlc )
{
    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC3( p_libvlc, psz_var_name[i], VLC_VAR_STRING );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC7( p_libvlc, psz_var_name[i], psz_var_name[i] );

    for( unsigned i = 0; i < VAR_COUNT; i++ )
    {
        char *psz_tmp = FUNC6( p_libvlc, psz_var_name[i] );

        FUNC0( psz_tmp != NULL );
        FUNC0( !FUNC2( psz_tmp, psz_var_name[i] ) );
        FUNC1( psz_tmp );
    }

    for( unsigned i = 0; i < VAR_COUNT; i++ )
        FUNC4( p_libvlc, psz_var_name[i] );

    /* Some more test for strings */
    FUNC3( p_libvlc, "bla", VLC_VAR_STRING );
    FUNC0( FUNC5( p_libvlc, "bla" ) == NULL );
    FUNC7( p_libvlc, "bla", "" );
    FUNC0( FUNC5( p_libvlc, "bla" ) == NULL );
    FUNC7( p_libvlc, "bla", "test" );

    char *psz_tmp = FUNC5( p_libvlc, "bla" );
    FUNC0( psz_tmp != NULL );
    FUNC0( !FUNC2( psz_tmp, "test" ) );
    FUNC1( psz_tmp );
    FUNC4( p_libvlc, "bla" );
}