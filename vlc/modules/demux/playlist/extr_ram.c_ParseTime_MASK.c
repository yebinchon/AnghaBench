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
 char* FUNC0 (char const*,int) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static int FUNC2( const char *s, size_t i_strlen)
{
    // need to parse hour:minutes:sec.fraction string
    int result = 0;
    int val;
    const char *end = s + i_strlen;
    // skip leading spaces if any
    s = FUNC0(s, i_strlen);

    val = 0;
    while( (s < end) && FUNC1((unsigned char)*s) )
    {
        int newval = val*10 + (*s - '0');
        if( newval < val )
        {
            // overflow
            val = 0;
            break;
        }
        val = newval;
        ++s;
    }
    result = val;
    s = FUNC0(s, end-s);
    if( *s == ':' )
    {
        ++s;
        s = FUNC0(s, end-s);
        result = result * 60;
        val = 0;
        while( (s < end) && FUNC1((unsigned char)*s) )
        {
            int newval = val*10 + (*s - '0');
            if( newval < val )
            {
                // overflow
                val = 0;
                break;
            }
            val = newval;
            ++s;
        }
        result += val;
        s = FUNC0(s, end-s);
        if( *s == ':' )
        {
            ++s;
            s = FUNC0(s, end-s);
            result = result * 60;
            val = 0;
            while( (s < end) && FUNC1((unsigned char)*s) )
            {
                int newval = val*10 + (*s - '0');
                if( newval < val )
                {
                    // overflow
                    val = 0;
                    break;
                }
                val = newval;
                ++s;
            }
            result += val;
            // TODO: one day, we may need to parse fraction for sub-second resolution
        }
    }
    return result;
}