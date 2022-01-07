
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_8__ {int * platform_sys; TYPE_2__* window; } ;
typedef TYPE_3__ vlc_vk_t ;
struct TYPE_6__ {char* x11; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ display; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VOUT_WINDOW_TYPE_XID ;
 int msg_Err (TYPE_3__*,char*,char const*) ;
 int * xcb_connect (char const*,int *) ;
 scalar_t__ xcb_connection_has_error (int *) ;
 int xcb_disconnect (int *) ;

int vlc_vk_InitPlatform(vlc_vk_t *vk)
{
    if (vk->window->type != VOUT_WINDOW_TYPE_XID)
        return VLC_EGENERIC;

    const char *display = vk->window->display.x11;
    xcb_connection_t *conn = vk->platform_sys = xcb_connect(display, ((void*)0));
    if (xcb_connection_has_error(conn))
    {
        msg_Err(vk, "Failed connecting to X server (%s)",
                display ? display : "default");
        xcb_disconnect(conn);
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
