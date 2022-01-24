#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_5__ {int /*<<< orphan*/  fifo; } ;
typedef  TYPE_2__ filter_sys_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static block_t *FUNC3(filter_t *p_filter, block_t *p_in_buf)
{
    block_t *block = FUNC0(p_in_buf);
    filter_sys_t *p_sys = p_filter->p_sys;
    if (FUNC2(block != NULL))
        FUNC1(p_sys->fifo, block);
    return p_in_buf;
}