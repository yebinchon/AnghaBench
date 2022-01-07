
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vout_window_t ;
typedef int vout_window_cfg_t ;
struct TYPE_6__ {int (* enable ) (TYPE_2__*,int const*) ;} ;


 int VLC_SUCCESS ;
 int stub1 (TYPE_2__*,int const*) ;
 int vout_window_SetInhibition (TYPE_2__*,int) ;

int vout_window_Enable(vout_window_t *window,
                       const vout_window_cfg_t *restrict cfg)
{
    if (window->ops->enable != ((void*)0)) {
        int err = window->ops->enable(window, cfg);
        if (err)
            return err;
    }

    vout_window_SetInhibition(window, 1);
    return VLC_SUCCESS;
}
