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
typedef  int /*<<< orphan*/  text_style_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

text_style_t *FUNC2( const text_style_t *p_src )
{
    if( !p_src )
        return NULL;

    text_style_t *p_dst = FUNC0( 1, sizeof(*p_dst) );
    if( p_dst )
        FUNC1( p_dst, p_src );
    return p_dst;
}