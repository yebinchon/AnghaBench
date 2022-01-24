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

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 float FUNC1 (char const*,char**) ; 

__attribute__((used)) static bool FUNC2( const char *psz, float *x, float *y )
{
    char *psz_end;
    float a = FUNC1( psz, &psz_end );
    if( psz_end != psz &&
        a >= 0.0 && a <= 100.0 && psz_end && *psz_end == '%' )
    {
        psz = FUNC0( psz_end, ',' );
        if( psz )
        {
            float b = FUNC1( ++psz, &psz_end );
            if( psz_end != psz &&
                b >= 0.0 && b <= 100.0 && psz_end && *psz_end == '%' )
            {
                *x = a / 100.0;
                *y = b / 100.0;
                return true;
            }
        }
    }
    return false;
}