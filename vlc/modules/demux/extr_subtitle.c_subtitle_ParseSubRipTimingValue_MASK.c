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
typedef  scalar_t__ vlc_tick_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char const*,char*,int*,int*,int*,...) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(vlc_tick_t *timing_value,
                                           const char *s)
{
    int h1, m1, s1, d1 = 0;

    if ( FUNC1( s, "%d:%d:%d,%d",
                 &h1, &m1, &s1, &d1 ) == 4 ||
         FUNC1( s, "%d:%d:%d.%d",
                 &h1, &m1, &s1, &d1 ) == 4 ||
         FUNC1( s, "%d:%d:%d",
                 &h1, &m1, &s1) == 3 )
    {
        (*timing_value) = FUNC2( h1 * 3600 + m1 * 60 + s1) +
                          FUNC0( d1 );

        return VLC_SUCCESS;
    }

    return VLC_EGENERIC;
}