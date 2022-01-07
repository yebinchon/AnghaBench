
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int source; } ;
typedef TYPE_1__ vout_display_t ;
typedef int vout_display_cfg_t ;
struct TYPE_7__ {int place_changed; int texture_source; int vdcfg; } ;
typedef TYPE_2__ display_win32_area_t ;


 int VLC_VAR_BOOL ;
 int VLC_VAR_DOINHERIT ;
 int var_Create (TYPE_1__*,char*,int) ;

void CommonInit(vout_display_t *vd, display_win32_area_t *area, const vout_display_cfg_t *vdcfg)
{
    area->place_changed = 0;
    area->vdcfg = *vdcfg;

    area->texture_source = vd->source;

    var_Create(vd, "disable-screensaver", VLC_VAR_BOOL | VLC_VAR_DOINHERIT);
}
