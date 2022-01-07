
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opaque; int (* setResizeCb ) (int ,int ,struct vout_window_t*) ;} ;
typedef TYPE_1__ wextern_t ;
typedef int vout_window_cfg_t ;
struct vout_window_t {TYPE_1__* sys; } ;


 int VLC_SUCCESS ;
 int WindowResize ;
 int stub1 (int ,int ,struct vout_window_t*) ;

__attribute__((used)) static int Enable(struct vout_window_t *wnd, const vout_window_cfg_t *wcfg)
{
    wextern_t *sys = wnd->sys;

    if ( sys->setResizeCb != ((void*)0) )

        sys->setResizeCb( sys->opaque, WindowResize, wnd );

    (void) wcfg;
    return VLC_SUCCESS;
}
