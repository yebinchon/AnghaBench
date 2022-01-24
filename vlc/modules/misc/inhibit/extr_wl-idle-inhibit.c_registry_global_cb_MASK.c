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
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vlc_inhibit_t ;
struct TYPE_4__ {int /*<<< orphan*/  manager; } ;
typedef  TYPE_2__ vlc_inhibit_sys_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct wl_registry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wl_registry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zwp_idle_inhibit_manager_v1_interface ; 

__attribute__((used)) static void FUNC2(void *data, struct wl_registry *registry,
                               uint32_t name, const char *iface, uint32_t vers)
{
    vlc_inhibit_t *ih = data;
    vlc_inhibit_sys_t *sys = ih->p_sys;

    if (!FUNC0(iface, "zwp_idle_inhibit_manager_v1"))
        sys->manager = FUNC1(registry, name,
                                    &zwp_idle_inhibit_manager_v1_interface, 1);
    (void) vers;
}