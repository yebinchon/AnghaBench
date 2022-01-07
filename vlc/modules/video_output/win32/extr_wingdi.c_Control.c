
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int sys; int area; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int va_list ;


 int CommonControl (int ,int *,int *,int,int ) ;
 int VLC_OBJECT (TYPE_1__*) ;

__attribute__((used)) static int Control(vout_display_t *vd, int query, va_list args)
{
    vout_display_sys_t *sys = vd->sys;
    return CommonControl(VLC_OBJECT(vd), &sys->area, &sys->sys, query, args);
}
