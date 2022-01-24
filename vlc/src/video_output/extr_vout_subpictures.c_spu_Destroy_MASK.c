#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* p; } ;
typedef  TYPE_2__ spu_t ;
struct TYPE_7__ {int /*<<< orphan*/  thread; } ;
struct TYPE_9__ {TYPE_1__ prerender; } ;
typedef  TYPE_3__ spu_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(spu_t *spu)
{
    spu_private_t *sys = spu->p;
    /* stop prerendering */
    FUNC1(sys->prerender.thread);
    FUNC2(sys->prerender.thread, NULL);
    /* delete filters and free resources */
    FUNC0(spu);
    FUNC3(spu);
}