
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* selectPlaneCb ) (int ,size_t) ;int outside_opaque; } ;
typedef TYPE_1__ vout_display_sys_t ;


 int stub1 (int ,size_t) ;

__attribute__((used)) static bool SelectRenderPlane(void *opaque, size_t plane)
{
    vout_display_sys_t *sys = opaque;
    return sys->selectPlaneCb(sys->outside_opaque, plane);
}
