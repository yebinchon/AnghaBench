
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; } ;


 int MOUSE_FLAG_BUTTON1 ;
 int MOUSE_FLAG_BUTTON2 ;
 int MOUSE_FLAG_BUTTON3 ;
 int MOUSE_FLAG_DOWN ;
 int MOUSE_FLAG_MOVE ;
 int RDP_INPUT_MOUSE ;
 int UpAndRunning ;
 int draw_cursor () ;
 int draw_cursor_under (int,int) ;
 TYPE_1__ mcursor ;
 int mouse_getbutton () ;
 int mouse_getx () ;
 int mouse_gety () ;
 int mouseb ;
 int mousex ;
 int mousey ;
 int rdp_send_input (int ,int ,int,int,int) ;

void process_mouse(void)
{
  int ox = mousex;
  int oy = mousey;
  int ob = mouseb;

  if (!UpAndRunning)
    return;
  mousex = mouse_getx() - mcursor.x;
  mousey = mouse_gety() - mcursor.y;
  mouseb = mouse_getbutton();

  if (mouseb != ob)
  {

    if (mouseb & 1)
      if (!(ob & 1))
        rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_DOWN | MOUSE_FLAG_BUTTON2,
                       mousex + mcursor.x, mousey + mcursor.y);
    if (ob & 1)
      if (!(mouseb & 1))
        rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_BUTTON2,
                       mousex + mcursor.x, mousey + mcursor.y);

    if (mouseb & 2)
      if (!(ob & 2))
        rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_DOWN | MOUSE_FLAG_BUTTON3,
                       mousex + mcursor.x, mousey + mcursor.y);
    if (ob & 2)
      if (!(mouseb & 2))
        rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_BUTTON3,
                       mousex + mcursor.x, mousey + mcursor.y);

    if (mouseb & 4)
      if (!(ob & 4))
        rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_DOWN | MOUSE_FLAG_BUTTON1,
                       mousex + mcursor.x, mousey + mcursor.y);
    if (ob & 4)
      if (!(mouseb & 4))
        rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_BUTTON1,
                       mousex + mcursor.x, mousey + mcursor.y);
  }
  if (mousex != ox || mousey != oy)
  {
    rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_MOVE,
                   mousex + mcursor.x, mousey + mcursor.y);
    draw_cursor_under(ox, oy);
    draw_cursor();
  }
}
