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
struct TYPE_7__ {char const* id; TYPE_1__* manager; } ;
typedef  TYPE_2__ Unit ;
struct TYPE_6__ {scalar_t__ status_unit_format; } ;

/* Variables and functions */
 scalar_t__ STATUS_UNIT_FORMAT_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char const* FUNC1 (TYPE_2__*) ; 

const char *FUNC2(Unit *u) {
        FUNC0(u);

        if (u->manager->status_unit_format == STATUS_UNIT_FORMAT_NAME && u->id)
                return u->id;

        return FUNC1(u);
}