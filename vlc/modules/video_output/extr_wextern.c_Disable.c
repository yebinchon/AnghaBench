
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opaque; int (* setResizeCb ) (int ,int *,int *) ;} ;
typedef TYPE_1__ wextern_t ;
struct vout_window_t {TYPE_1__* sys; } ;


 int stub1 (int ,int *,int *) ;

__attribute__((used)) static void Disable(struct vout_window_t *wnd)
{
    wextern_t *sys = wnd->sys;

    if ( sys->setResizeCb != ((void*)0) )
        sys->setResizeCb( sys->opaque, ((void*)0), ((void*)0) );
}
