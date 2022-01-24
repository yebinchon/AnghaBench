#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p; } ;
typedef  TYPE_3__ vout_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  window; } ;
struct TYPE_6__ {int /*<<< orphan*/  window_lock; TYPE_1__ display_cfg; int /*<<< orphan*/  dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC4(vout_thread_t *vout, unsigned st)
{
    FUNC0(!vout->p->dummy);
    FUNC1(&vout->p->window_lock);
    FUNC3(vout->p->display_cfg.window, st);
    FUNC2(&vout->p->window_lock);
}