#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {scalar_t__ mf_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(void) {
    if (server.cluster->mf_end && server.cluster->mf_end < FUNC0()) {
        FUNC2(LL_WARNING,"Manual failover timed out.");
        FUNC1();
    }
}