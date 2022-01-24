#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vlc_inhibit_t ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ vlc_inhibit_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t*)obj;
    vlc_inhibit_sys_t* sys = ih->p_sys;
    FUNC0(sys->thread);
    FUNC2(sys->thread, NULL);
    FUNC1(&sys->cond);
    FUNC3(&sys->mutex);
}