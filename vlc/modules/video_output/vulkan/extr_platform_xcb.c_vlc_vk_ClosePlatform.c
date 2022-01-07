
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_3__ {int * platform_sys; } ;
typedef TYPE_1__ vlc_vk_t ;


 int xcb_disconnect (int *) ;

void vlc_vk_ClosePlatform(vlc_vk_t *vk)
{
    xcb_connection_t *conn = vk->platform_sys;

    xcb_disconnect(conn);
}
