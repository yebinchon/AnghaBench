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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_5__ {int /*<<< orphan*/ * apps_root; int /*<<< orphan*/  apps; int /*<<< orphan*/  conn; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  DelApp ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (vlc_object_t *obj)
{
    services_discovery_t *sd = (services_discovery_t *)obj;
    services_discovery_sys_t *p_sys = sd->p_sys;

    FUNC3 (p_sys->thread);
    FUNC4 (p_sys->thread, NULL);
    FUNC5 (p_sys->conn);
    FUNC2 (p_sys->apps, DelApp);
    if (p_sys->apps_root != NULL)
        FUNC1(p_sys->apps_root);
    FUNC0 (p_sys);
}