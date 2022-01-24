#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_6__ {size_t cgroup_context_offset; } ;
typedef  int /*<<< orphan*/  CGroupContext ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 

CGroupContext *FUNC1(Unit *u) {
        size_t offset;

        if (u->type < 0)
                return NULL;

        offset = FUNC0(u)->cgroup_context_offset;
        if (offset <= 0)
                return NULL;

        return (CGroupContext*) ((uint8_t*) u + offset);
}