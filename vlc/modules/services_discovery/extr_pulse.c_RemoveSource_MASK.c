#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_5__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  cmpsrc ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void** FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (services_discovery_t *sd, uint32_t idx)
{
    services_discovery_sys_t *sys = sd->p_sys;

    void **dp = FUNC2 (&idx, &sys->root, cmpsrc);
    if (dp == NULL)
        return;

    struct device *d = *dp;
    FUNC1 (d, &sys->root, cmpsrc);
    FUNC0 (d);
}