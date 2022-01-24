#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_6__ {int /*<<< orphan*/  dmx_handle; struct dmx_region_t* dmx_region; } ;
typedef  TYPE_2__ vout_display_sys_t ;
struct dmx_region_t {struct dmx_region_t* next; } ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  DISPMANX_NO_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (struct dmx_region_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    DISPMANX_UPDATE_HANDLE_T update = FUNC3(10);
    struct dmx_region_t *dmx_region = sys->dmx_region;
    struct dmx_region_t *dmx_region_next;

    while(dmx_region) {
        dmx_region_next = dmx_region->next;
        FUNC0(dmx_region, update);
        dmx_region = dmx_region_next;
    }

    FUNC4(update);
    sys->dmx_region = NULL;

    FUNC1(vd, false);

    FUNC2(sys->dmx_handle);
    sys->dmx_handle = DISPMANX_NO_HANDLE;
}