
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GR_EVENT_KEYSTROKE ;


 int RDP_INPUT_SCANCODE ;
 int RDP_KEYPRESS ;
 int RDP_KEYRELEASE ;
 scalar_t__ get_sc (int *,int*,int*) ;
 int rdp_send_input (int ,int ,int ,int,int) ;

__attribute__((used)) void static process_keystroke(GR_EVENT_KEYSTROKE * event_keystroke, int down)
{
  int sc, ec;

  if (get_sc(event_keystroke, &sc, &ec) == 0)
  {
    if (down)
    {
      rdp_send_input(0, RDP_INPUT_SCANCODE, RDP_KEYPRESS, sc, ec);
    }
    else
    {
      rdp_send_input(0, RDP_INPUT_SCANCODE, RDP_KEYRELEASE, sc, ec);
    }
  }
}
