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
typedef  void* uint32_t ;
struct vlc_wl_interface {int /*<<< orphan*/  globals; } ;
struct vlc_wl_global {int /*<<< orphan*/  node; struct vlc_wl_interface* interface; void* version; void* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct vlc_wl_global* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vlc_wl_global *FUNC3(struct vlc_wl_interface *vi,
                                               uint32_t name, uint32_t version)
{
    struct vlc_wl_global *vg = FUNC1(sizeof (*vg));
    if (FUNC0(vg != NULL))
    {
        vg->name = name;
        vg->version = version;
        vg->interface = vi;
        FUNC2(&vi->globals, &vg->node);
    }
    return vg;
}