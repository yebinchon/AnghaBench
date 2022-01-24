#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p; } ;
typedef  TYPE_1__ vout_thread_t ;
struct TYPE_7__ {int /*<<< orphan*/ * display; int /*<<< orphan*/  dummy; } ;
typedef  TYPE_2__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;
    FUNC0(!sys->dummy);

    if (sys->display != NULL)
        FUNC2(vout);

    FUNC1(vout);
}