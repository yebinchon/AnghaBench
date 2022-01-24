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
 int /*<<< orphan*/ * FUNC0 (int const) ; 
 int FUNC1 (char const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int const,char const*) ; 

size_t FUNC3( uint8_t **pp_dst, const char *psz_src )
{
    const int i_src = FUNC1( psz_src );
    uint8_t   *p_dst;

    *pp_dst = p_dst = FUNC0( i_src );
    if( !p_dst )
        return 0;
    return  FUNC2( p_dst, i_src, psz_src );
}