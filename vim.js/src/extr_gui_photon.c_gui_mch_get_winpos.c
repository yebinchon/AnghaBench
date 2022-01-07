
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vimWindow; } ;
struct TYPE_4__ {int x; int y; } ;
typedef TYPE_1__ PhPoint_t ;


 int OK ;
 TYPE_1__* PtWidgetPos (int ,int *) ;
 TYPE_2__ gui ;

int
gui_mch_get_winpos(int *x, int *y)
{
    PhPoint_t *pos;

    pos = PtWidgetPos(gui.vimWindow, ((void*)0));

    *x = pos->x;
    *y = pos->y;

    return OK;
}
