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
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ VLC_EGENERIC ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char*,char*,int*,...) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int64_t FUNC3( char *psz, int *h, int *m, int *s, int *f )
{
    if( *psz == '\0' ) return 0;
    if( FUNC1( psz, "%d:%d:%d.%d", h, m, s, f ) == 4 ||
            FUNC1( psz, "%d:%d.%d", m, s, f ) == 3 ||
            FUNC1( psz, "%d.%d", s, f ) == 2 ||
            FUNC1( psz, "%d:%d", m, s ) == 2 ||
            FUNC1( psz, "%d", s ) == 1 )
    {
        return FUNC2((( *h * 60 + *m ) * 60 ) + *s )
               + FUNC0(*f * 10);
    }
    else return VLC_EGENERIC;
}