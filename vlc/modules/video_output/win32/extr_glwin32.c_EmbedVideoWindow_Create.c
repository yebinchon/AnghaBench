
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int hwnd; } ;
struct TYPE_12__ {int * ops; TYPE_1__ handle; int type; } ;
typedef TYPE_3__ vout_window_t ;
struct TYPE_13__ {TYPE_5__* sys; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_11__ {int hvideownd; } ;
struct TYPE_14__ {TYPE_2__ sys; } ;
typedef TYPE_5__ vout_display_sys_t ;


 int VOUT_WINDOW_TYPE_HWND ;
 int embedVideoWindow_Ops ;
 TYPE_3__* vlc_object_create (TYPE_4__*,int) ;

__attribute__((used)) static vout_window_t *EmbedVideoWindow_Create(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    vout_window_t *wnd = vlc_object_create(vd, sizeof(vout_window_t));
    if (!wnd)
        return ((void*)0);

    wnd->type = VOUT_WINDOW_TYPE_HWND;
    wnd->handle.hwnd = sys->sys.hvideownd;
    wnd->ops = &embedVideoWindow_Ops;
    return wnd;
}
