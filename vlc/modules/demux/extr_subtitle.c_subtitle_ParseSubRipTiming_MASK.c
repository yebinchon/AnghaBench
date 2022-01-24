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
struct TYPE_3__ {int /*<<< orphan*/  i_stop; int /*<<< orphan*/  i_start; } ;
typedef  TYPE_1__ subtitle_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__) ; 
 int FUNC2 (char const*,char*,char*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5( subtitle_t *p_subtitle,
                                       const char *s )
{
    int i_result = VLC_EGENERIC;
    char *psz_start, *psz_stop;
    psz_start = FUNC1( FUNC3(s) + 1 );
    psz_stop = FUNC1( FUNC3(s) + 1 );

    if( FUNC2( s, "%s --> %s", psz_start, psz_stop) == 2 &&
        FUNC4( &p_subtitle->i_start, psz_start ) == VLC_SUCCESS &&
        FUNC4( &p_subtitle->i_stop,  psz_stop ) == VLC_SUCCESS )
    {
        i_result = VLC_SUCCESS;
    }

    FUNC0(psz_start);
    FUNC0(psz_stop);

    return i_result;
}