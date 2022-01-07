
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_4__ {scalar_t__ use_rdp5; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef scalar_t__ BOOL ;


 int RDP_KEYPRESS ;
 int RDP_KEYRELEASE ;
 int SCANCODE_CHAR_ESC ;
 int SCANCODE_CHAR_LCTRL ;
 int SCANCODE_CHAR_LWIN ;
 int SCANCODE_CHAR_RWIN ;
 int rdp_send_scancode (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
send_winkey(RDPCLIENT * This, uint32 ev_time, BOOL pressed, BOOL leftkey)
{
 uint8 winkey;

 if (leftkey)
  winkey = SCANCODE_CHAR_LWIN;
 else
  winkey = SCANCODE_CHAR_RWIN;

 if (pressed)
 {
  if (This->use_rdp5)
  {
   rdp_send_scancode(This, ev_time, RDP_KEYPRESS, winkey);
  }
  else
  {

   rdp_send_scancode(This, ev_time, RDP_KEYPRESS, SCANCODE_CHAR_LCTRL);
   rdp_send_scancode(This, ev_time, RDP_KEYPRESS, SCANCODE_CHAR_ESC);
  }
 }
 else
 {

  if (This->use_rdp5)
  {
   rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, winkey);
  }
  else
  {
   rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_ESC);
   rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LCTRL);
  }
 }
}
