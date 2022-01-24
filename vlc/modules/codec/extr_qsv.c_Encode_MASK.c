#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_13__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ encoder_t ;
struct TYPE_14__ {scalar_t__ async_depth; int /*<<< orphan*/  packets; } ;
typedef  TYPE_2__ encoder_sys_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_15__ {struct TYPE_15__* syncp; } ;
typedef  TYPE_3__ async_task_t ;
struct TYPE_16__ {scalar_t__ syncp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_9__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,TYPE_3__*) ; 

__attribute__((used)) static block_t *FUNC9(encoder_t *this, picture_t *pic)
{
    encoder_t     *enc = (encoder_t *)this;
    encoder_sys_t *sys = enc->p_sys;
    async_task_t     *task;
    block_t       *block = NULL;

    if (FUNC7(pic != NULL))
    {
        task = FUNC5( enc, pic );
        if (FUNC7(task != NULL))
            FUNC3(&sys->packets, task);
    }

    if ( FUNC2(&sys->packets) == (sys->async_depth + 1) ||
         (!pic && FUNC2(&sys->packets)))
    {
        FUNC0(FUNC4(&sys->packets)->syncp != 0);
        task = FUNC1(&sys->packets);
        block = FUNC8( enc, task );
        FUNC6(task->syncp);
        FUNC6(task);
    }

    return block;
}