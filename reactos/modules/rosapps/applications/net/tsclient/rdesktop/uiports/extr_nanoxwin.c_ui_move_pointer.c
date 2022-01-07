
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GrMoveCursor (int,int) ;

void ui_move_pointer(int x, int y)
{
  GrMoveCursor(x, y);
}
