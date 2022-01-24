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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 char* FUNC0 (int const) ; 
 int FUNC1 (char const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int const,char const*) ; 

char *FUNC3( const char *psz_src )
{
    const int i_src = FUNC1( psz_src );
    char *p_dst = FUNC0( i_src + 1 );
    size_t i_dst;
    if( !p_dst )
        return NULL;

    i_dst = FUNC2( (uint8_t*)p_dst, i_src, psz_src );
    p_dst[i_dst] = '\0';

    return p_dst;
}