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
struct TYPE_4__ {scalar_t__ fstype; int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ MountParameters ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC3(const MountParameters *p) {
        FUNC1(p);

        if (FUNC2(p->options, "bind\0" "rbind\0"))
                return true;

        if (p->fstype && FUNC0(p->fstype, "bind", "rbind"))
                return true;

        return false;
}