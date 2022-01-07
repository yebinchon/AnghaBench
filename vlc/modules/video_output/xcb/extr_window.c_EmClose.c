
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_6__ {int xid; } ;
struct TYPE_7__ {TYPE_1__ handle; } ;
typedef TYPE_2__ vout_window_t ;


 int Close (TYPE_2__*) ;
 int ReleaseDrawable (int ,int ) ;
 int VLC_OBJECT (TYPE_2__*) ;

__attribute__((used)) static void EmClose (vout_window_t *wnd)
{
    xcb_window_t window = wnd->handle.xid;

    Close (wnd);
    ReleaseDrawable (VLC_OBJECT(wnd), window);
}
