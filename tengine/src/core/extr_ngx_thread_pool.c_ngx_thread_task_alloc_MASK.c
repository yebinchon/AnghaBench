#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* ctx; } ;
typedef  TYPE_1__ ngx_thread_task_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 

ngx_thread_task_t *
FUNC1(ngx_pool_t *pool, size_t size)
{
    ngx_thread_task_t  *task;

    task = FUNC0(pool, sizeof(ngx_thread_task_t) + size);
    if (task == NULL) {
        return NULL;
    }

    task->ctx = task + 1;

    return task;
}