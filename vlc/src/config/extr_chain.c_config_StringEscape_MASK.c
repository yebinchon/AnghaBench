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
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int) ; 

char *FUNC3( const char *str )
{
    size_t length = 0;

    if( str == NULL )
        return NULL;

    for( const char *p = str; *p; p++ )
        length += FUNC0( *p ) ? 2 : 1;

    char *ret = FUNC1( length + 1 ), *dst = ret;

    if( FUNC2( !ret ) )
        return NULL;

    for( const char *p = str; *p; p++ )
    {
        if( FUNC0( *p ) )
            *dst++ = '\\';
        *dst++ = *p;
    }
    *dst = '\0';;
    return ret;
}