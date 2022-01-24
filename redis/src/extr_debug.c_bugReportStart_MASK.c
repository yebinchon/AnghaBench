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
struct TYPE_2__ {int bug_report_start; } ;

/* Variables and functions */
 int LL_RAW ; 
 int LL_WARNING ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

void FUNC1(void) {
    if (server.bug_report_start == 0) {
        FUNC0(LL_WARNING|LL_RAW,
        "\n\n=== REDIS BUG REPORT START: Cut & paste starting from here ===\n");
        server.bug_report_start = 1;
    }
}