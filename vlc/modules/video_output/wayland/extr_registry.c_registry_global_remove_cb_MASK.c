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
struct vlc_wl_registry {int /*<<< orphan*/  names; } ;
struct vlc_wl_global {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_wl_global*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void** FUNC2 (struct vlc_wl_global*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_wl_global*) ; 
 int /*<<< orphan*/  vwncmp ; 

__attribute__((used)) static void FUNC4(void *data, struct wl_registry *registry,
                                      uint32_t name)
{
    struct vlc_wl_registry *vr = data;
    struct vlc_wl_global key = { .name = name };
    void **pvg = FUNC2(&key, &vr->names, vwncmp);

    if (FUNC0(pvg != NULL))
    {
        struct vlc_wl_global *vg = *pvg;

        FUNC1(vg, &vr->names, vwncmp);
        FUNC3(vg);
    }

    (void) registry;
}