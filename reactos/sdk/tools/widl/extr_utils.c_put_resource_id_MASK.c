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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned char) ; 

__attribute__((used)) static inline void FUNC3( const char *str )
{
    if (str[0] != '#')
    {
        while (*str)
        {
            unsigned char ch = *str++;
            FUNC1( FUNC2(ch) );
        }
        FUNC1( 0 );
    }
    else
    {
        FUNC1( 0xffff );
        FUNC1( FUNC0( str + 1 ));
    }
}