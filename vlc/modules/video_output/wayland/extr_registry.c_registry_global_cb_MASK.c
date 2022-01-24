#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct wl_registry {int dummy; } ;
struct vlc_wl_registry {int /*<<< orphan*/  names; int /*<<< orphan*/  interfaces; } ;
typedef  void vlc_wl_interface ;
typedef  void vlc_wl_global ;

/* Variables and functions */
 void** FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  vwicmp ; 
 int /*<<< orphan*/  vwncmp ; 

__attribute__((used)) static void FUNC6(void *data, struct wl_registry *registry,
                               uint32_t name, const char *iface, uint32_t vers)
{
    struct vlc_wl_registry *vr = data;
    struct vlc_wl_interface *vi = FUNC4(iface);

    void **pvi = FUNC0(vi, &vr->interfaces, vwicmp);
    if (FUNC1(pvi == NULL))
    {
        FUNC5(vi);
        return;
    }

    if (*pvi != vi)
    {
        FUNC5(vi);
        vi = *pvi;
    }

    struct vlc_wl_global *vg = FUNC2(vi, name, vers);
    if (FUNC1(vg == NULL))
        return;

    void **pvg = FUNC0(vg, &vr->names, vwncmp);
    if (FUNC1(pvg == NULL) /* OOM */
     || FUNC1(*pvg != vg) /* display server bug */)
        FUNC3(vg);

    (void) registry;
}