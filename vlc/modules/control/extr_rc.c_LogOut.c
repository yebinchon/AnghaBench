
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int i_socket; } ;
typedef TYPE_2__ intf_sys_t ;


 int net_Close (int) ;

__attribute__((used)) static void LogOut(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;


    if (sys->i_socket != -1)
    {
        net_Close(sys->i_socket);
        sys->i_socket = -1;
    }
}
