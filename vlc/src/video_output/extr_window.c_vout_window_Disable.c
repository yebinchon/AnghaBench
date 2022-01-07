
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vout_window_t ;
struct TYPE_6__ {int (* disable ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;
 int vout_window_SetInhibition (TYPE_2__*,int) ;

void vout_window_Disable(vout_window_t *window)
{
    vout_window_SetInhibition(window, 0);

    if (window->ops->disable != ((void*)0))
        window->ops->disable(window);
}
