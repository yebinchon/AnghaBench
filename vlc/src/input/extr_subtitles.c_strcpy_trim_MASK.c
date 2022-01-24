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
 scalar_t__ FUNC0 (unsigned char) ; 
 char FUNC1 (unsigned char) ; 

__attribute__((used)) static void FUNC2( char *d, const char *s )
{
    unsigned char c;

    /* skip leading whitespace */
    while( ((c = *s) != '\0') && !FUNC0(c) )
    {
        s++;
    }
    for(;;)
    {
        /* copy word */
        while( ((c = *s) != '\0') && FUNC0(c) )
        {
            *d = FUNC1(c);
            s++; d++;
        }
        if( *s == 0 ) break;
        /* trim excess whitespace */
        while( ((c = *s) != '\0') && !FUNC0(c) )
        {
            s++;
        }
        if( *s == 0 ) break;
        *d++ = ' ';
    }
    *d = 0;
}