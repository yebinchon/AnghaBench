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
struct udev {int dummy; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_5__ {int /*<<< orphan*/  root; int /*<<< orphan*/ * monitor; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  DestroyDevice ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udev* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct udev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (vlc_object_t *obj)
{
    services_discovery_t *sd = (services_discovery_t *)obj;
    services_discovery_sys_t *p_sys = sd->p_sys;

    if (p_sys->monitor != NULL)
    {
        struct udev *udev = FUNC2 (p_sys->monitor);

        FUNC5 (p_sys->thread);
        FUNC6 (p_sys->thread, NULL);
        FUNC3 (p_sys->monitor);
        FUNC4 (udev);
    }

    FUNC1 (p_sys->root, DestroyDevice);
    FUNC0 (p_sys);
}