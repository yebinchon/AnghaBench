#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  what; } ;
struct TYPE_6__ {int from_proc_swaps; TYPE_1__ parameters_proc_swaps; } ;
typedef  TYPE_2__ Swap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Swap *s) {
        FUNC0(s);

        if (!s->from_proc_swaps)
                return;

        s->parameters_proc_swaps.what = FUNC1(s->parameters_proc_swaps.what);

        s->from_proc_swaps = false;
}