#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ ClientContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const void *a, const void *b) {
        const ClientContext *x = a, *y = b;
        int r;

        r = FUNC0(x->timestamp, y->timestamp);
        if (r != 0)
                return r;

        return FUNC0(x->pid, y->pid);
}