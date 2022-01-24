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
struct TYPE_4__ {int ioprio; scalar_t__ ioprio_set; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  IOPRIO_CLASS_BE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IOPRIO_WHO_PROCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(const ExecContext *c) {
        int p;

        FUNC1(c);

        if (c->ioprio_set)
                return c->ioprio;

        p = FUNC2(IOPRIO_WHO_PROCESS, 0);
        if (p < 0)
                return FUNC0(IOPRIO_CLASS_BE, 4);

        return p;
}