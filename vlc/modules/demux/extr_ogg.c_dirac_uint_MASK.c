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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint32_t FUNC2( bs_t *p_bs )
{
    uint32_t u_count = 0, u_value = 0;

    while( !FUNC0( p_bs ) && !FUNC1( p_bs, 1 ) )
    {
        u_count++;
        u_value <<= 1;
        u_value |= FUNC1( p_bs, 1 );
    }

    return (1<<u_count) - 1 + u_value;
}