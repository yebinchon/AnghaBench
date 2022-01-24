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
struct TYPE_4__ {scalar_t__ mode; int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Inhibitor ;

/* Variables and functions */
 scalar_t__ INHIBIT_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(Inhibitor *i) {
        const char *property;

        FUNC0(i);

        property = i->mode == INHIBIT_BLOCK ? "BlockInhibited" : "DelayInhibited";

        return FUNC1(i->manager, property, NULL);
}