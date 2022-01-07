
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ event; } ;
typedef TYPE_1__ vout_display_sys_win32_t ;
typedef int vlc_object_t ;


 int CommonChangeThumbnailClip (int *,TYPE_1__*,int) ;
 int EventThreadDestroy (scalar_t__) ;
 int EventThreadStop (scalar_t__) ;

void CommonWindowClean(vlc_object_t *obj, vout_display_sys_win32_t *sys)
{
    if (sys->event) {
        CommonChangeThumbnailClip(obj, sys, 0);
        EventThreadStop(sys->event);
        EventThreadDestroy(sys->event);
    }
}
