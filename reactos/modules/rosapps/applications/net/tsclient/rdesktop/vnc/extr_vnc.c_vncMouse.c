
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
struct _rfbClientRec {int dummy; } ;


 int MOUSE_FLAG_DOWN ;
 int MOUSE_FLAG_MOVE ;
 int RDP_INPUT_MOUSE ;
 int lastbuttons ;
 int* mouseLookup ;
 int rdp_send_input (int ,int ,int,int,int) ;
 int rfbDefaultPtrAddEvent (int,int,int,struct _rfbClientRec*) ;
 int time (int *) ;

void
vncMouse(int buttonMask, int x, int y, struct _rfbClientRec *cl)
{
 int b;
 uint32 ev_time = time(((void*)0));

 rdp_send_input(ev_time, RDP_INPUT_MOUSE, MOUSE_FLAG_MOVE, x, y);

 for (b = 0; b < 3; b++)
 {
  int bb = 1 << (b);
  if (!(lastbuttons & bb) && (buttonMask & bb))
  {
   rdp_send_input(ev_time, RDP_INPUT_MOUSE,
           (mouseLookup[b]) | MOUSE_FLAG_DOWN, x, y);
  }
  else if ((lastbuttons & bb) && !(buttonMask & bb))
  {
   rdp_send_input(ev_time, RDP_INPUT_MOUSE, (mouseLookup[b]), x, y);
  }
 }
 lastbuttons = buttonMask;


 rfbDefaultPtrAddEvent(buttonMask, x, y, cl);
}
