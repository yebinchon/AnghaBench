
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wnd; int display; } ;
typedef TYPE_1__ RDPCLIENT ;


 int XWarpPointer (int ,int ,int ,int ,int ,int ,int ,int,int) ;

void
ui_move_pointer(RDPCLIENT * This, int x, int y)
{
 XWarpPointer(This->display, This->wnd, This->wnd, 0, 0, 0, 0, x, y);
}
