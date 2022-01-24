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
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6( libvlc_media_player_t *p_mi, const char *restrict name )
{
    vout_thread_t *vout = FUNC0( p_mi, 0 );
    if (!vout)
        return false;

    char *psz_sources = FUNC4( vout, "sub-source" );
    if( !psz_sources )
    {
        FUNC2( "%s not enabled", name );
        FUNC5(vout);
        return false;
    }

    /* Find 'name'  */
    char *p = FUNC3( psz_sources, name );
    FUNC1( psz_sources );
    FUNC5(vout);
    return (p != NULL);
}