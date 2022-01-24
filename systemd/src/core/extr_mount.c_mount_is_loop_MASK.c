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
struct TYPE_4__ {int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ MountParameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC2(const MountParameters *p) {
        FUNC0(p);

        if (FUNC1(p->options, "loop\0"))
                return true;

        return false;
}