
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ w_height; } ;


 scalar_t__ Rows ;
 scalar_t__ W_STATUS_HEIGHT (TYPE_1__*) ;
 scalar_t__ W_WINROW (TYPE_1__*) ;
 scalar_t__ cmdline_row ;
 scalar_t__ exmode_active ;
 TYPE_1__* lastwin ;
 scalar_t__ msg_scrolled ;

void
compute_cmdrow()
{
    if (exmode_active || msg_scrolled != 0)
 cmdline_row = Rows - 1;
    else
 cmdline_row = W_WINROW(lastwin) + lastwin->w_height
         + W_STATUS_HEIGHT(lastwin);
}
