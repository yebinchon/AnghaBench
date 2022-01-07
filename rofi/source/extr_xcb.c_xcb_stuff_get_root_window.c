
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_4__ {TYPE_1__* screen; } ;
struct TYPE_3__ {int root; } ;


 TYPE_2__* xcb ;

xcb_window_t xcb_stuff_get_root_window ( void )
{
    return xcb->screen->root;
}
