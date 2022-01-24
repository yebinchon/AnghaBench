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
struct TYPE_4__ {int ref_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_overlay; } ;
typedef  TYPE_1__ bluray_spu_updater_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(bluray_spu_updater_sys_t *p_sys)
{
    FUNC2(&p_sys->lock);
    int refs = --p_sys->ref_cnt;
    p_sys->p_overlay = NULL;
    FUNC3(&p_sys->lock);

    if (refs < 1) {
        FUNC1(&p_sys->lock);
        FUNC0(p_sys);
    }
}