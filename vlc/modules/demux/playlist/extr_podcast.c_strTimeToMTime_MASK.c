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
typedef  int /*<<< orphan*/  vlc_tick_t ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_DURATION_UNSET ; 
 int FUNC0 (char const*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static vlc_tick_t FUNC2( const char *psz )
{
    int h, m, s;
    switch( FUNC0( psz, "%u:%u:%u", &h, &m, &s ) )
    {
    case 3:
        return FUNC1( ( h*60 + m )*60 + s );
    case 2:
        return FUNC1( h*60 + m );
    default:
        return INPUT_DURATION_UNSET;
    }
}