
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tcursor ;
struct TYPE_3__ {int x; int y; } ;


 int draw_cursor () ;
 int draw_cursor_under (int,int) ;
 TYPE_1__ mcursor ;
 int memcpy (TYPE_1__*,void*,int) ;
 int mousex ;
 int mousey ;

void ui_set_cursor(void* cursor)
{
  int x;
  int y;
  int ox;
  int oy;

  ox = mousex;
  oy = mousey;
  x = mousex + mcursor.x;
  y = mousey + mcursor.y;
  memcpy(&mcursor, cursor, sizeof(tcursor));
  mousex = x - mcursor.x;
  mousey = y - mcursor.y;
  draw_cursor_under(ox, oy);
  draw_cursor();
}
