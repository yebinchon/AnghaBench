#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ show_status; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ SHOW_STATUS_AUTO ; 
 scalar_t__ SHOW_STATUS_TEMPORARY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

void FUNC2(Manager *m, bool enable) {
        FUNC0(m);

        if (enable) {
                if (m->show_status == SHOW_STATUS_AUTO)
                        FUNC1(m, SHOW_STATUS_TEMPORARY);
        } else {
                if (m->show_status == SHOW_STATUS_TEMPORARY)
                        FUNC1(m, SHOW_STATUS_AUTO);
        }
}