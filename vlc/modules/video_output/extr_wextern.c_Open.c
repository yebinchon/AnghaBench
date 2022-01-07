
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* setResizeCb; void* opaque; } ;
typedef TYPE_1__ wextern_t ;
struct TYPE_8__ {int * ops; int type; TYPE_1__* sys; } ;
typedef TYPE_2__ vout_window_t ;


 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int VOUT_WINDOW_TYPE_DUMMY ;
 int ops ;
 scalar_t__ unlikely (int ) ;
 void* var_InheritAddress (TYPE_2__*,char*) ;
 TYPE_1__* vlc_obj_malloc (int ,int) ;

__attribute__((used)) static int Open(vout_window_t *wnd)
{
    wextern_t *sys = vlc_obj_malloc(VLC_OBJECT(wnd), sizeof(*sys));
    if (unlikely(sys==((void*)0)))
        return VLC_ENOMEM;
    sys->opaque = var_InheritAddress( wnd, "vout-cb-opaque" );
    sys->setResizeCb = var_InheritAddress( wnd, "vout-cb-resize-cb" );

    wnd->sys = sys;
    wnd->type = VOUT_WINDOW_TYPE_DUMMY;
    wnd->ops = &ops;
    return VLC_SUCCESS;
}
