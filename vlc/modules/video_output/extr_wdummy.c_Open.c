
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ops; int type; } ;
typedef TYPE_1__ vout_window_t ;


 int VLC_SUCCESS ;
 int VOUT_WINDOW_TYPE_DUMMY ;
 int ops ;

__attribute__((used)) static int Open(vout_window_t *wnd)
{
    wnd->type = VOUT_WINDOW_TYPE_DUMMY;
    wnd->ops = &ops;
    return VLC_SUCCESS;
}
