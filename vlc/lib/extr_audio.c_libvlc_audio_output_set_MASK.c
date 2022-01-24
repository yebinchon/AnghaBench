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
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

int FUNC4( libvlc_media_player_t *mp, const char *psz_name )
{
    char *value;

    if( !FUNC2( psz_name )
     || FUNC0( &value, "%s,none", psz_name ) == -1 )
        return -1;
    FUNC3( mp, "aout", value );
    FUNC1( value );

    return 0;
}