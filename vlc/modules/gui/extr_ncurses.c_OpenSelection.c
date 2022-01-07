
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int plidx_follow; int open_chain; } ;
typedef TYPE_2__ intf_sys_t ;


 int AddItem (TYPE_1__*,int ) ;

__attribute__((used)) static void OpenSelection(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;

    AddItem(intf, sys->open_chain);
    sys->plidx_follow = 1;
}
