
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int dmx_handle; struct dmx_region_t* dmx_region; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct dmx_region_t {struct dmx_region_t* next; } ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 int DISPMANX_NO_HANDLE ;
 int dmx_region_delete (struct dmx_region_t*,int ) ;
 int show_background (TYPE_1__*,int) ;
 int vc_dispmanx_display_close (int ) ;
 int vc_dispmanx_update_start (int) ;
 int vc_dispmanx_update_submit_sync (int ) ;

__attribute__((used)) static void close_dmx(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    DISPMANX_UPDATE_HANDLE_T update = vc_dispmanx_update_start(10);
    struct dmx_region_t *dmx_region = sys->dmx_region;
    struct dmx_region_t *dmx_region_next;

    while(dmx_region) {
        dmx_region_next = dmx_region->next;
        dmx_region_delete(dmx_region, update);
        dmx_region = dmx_region_next;
    }

    vc_dispmanx_update_submit_sync(update);
    sys->dmx_region = ((void*)0);

    show_background(vd, 0);

    vc_dispmanx_display_close(sys->dmx_handle);
    sys->dmx_handle = DISPMANX_NO_HANDLE;
}
