
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int remote_modifier_state; } ;
struct TYPE_11__ {scalar_t__ numlock_sync; TYPE_1__ xkeymap; } ;
typedef TYPE_2__ RDPCLIENT ;


 scalar_t__ MASK_HAS_BITS (int ,int ) ;
 int MapLeftAltMask ;
 int MapLeftCtrlMask ;
 int MapLeftShiftMask ;
 int MapRightAltMask ;
 int MapRightCtrlMask ;
 int MapRightShiftMask ;
 int RDP_INPUT_SYNCHRONIZE ;
 int RDP_KEYRELEASE ;
 int SCANCODE_CHAR_LALT ;
 int SCANCODE_CHAR_LCTRL ;
 int SCANCODE_CHAR_LSHIFT ;
 int SCANCODE_CHAR_RALT ;
 int SCANCODE_CHAR_RCTRL ;
 int SCANCODE_CHAR_RSHIFT ;
 int XK_Alt_L ;
 int XK_Alt_R ;
 int XK_Control_L ;
 int XK_Control_R ;
 int XK_ISO_Level3_Shift ;
 int XK_Mode_switch ;
 int XK_Shift_L ;
 int XK_Shift_R ;
 int get_key_state (TYPE_2__*,unsigned int,int ) ;
 int rdp_send_input (TYPE_2__*,int ,int ,int ,int ,int ) ;
 int rdp_send_scancode (TYPE_2__*,int ,int ,int ) ;
 unsigned int read_keyboard_state (TYPE_2__*) ;
 int reset_winkey (TYPE_2__*,int ) ;
 int time (int *) ;
 int ui_get_numlock_state (TYPE_2__*,unsigned int) ;

void
reset_modifier_keys(RDPCLIENT * This)
{
 unsigned int state = read_keyboard_state(This);


 uint32 ev_time;
 ev_time = time(((void*)0));

 if (MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapLeftShiftMask)
     && !get_key_state(This, state, XK_Shift_L))
  rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LSHIFT);

 if (MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapRightShiftMask)
     && !get_key_state(This, state, XK_Shift_R))
  rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_RSHIFT);

 if (MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapLeftCtrlMask)
     && !get_key_state(This, state, XK_Control_L))
  rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LCTRL);

 if (MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapRightCtrlMask)
     && !get_key_state(This, state, XK_Control_R))
  rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_RCTRL);

 if (MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapLeftAltMask) && !get_key_state(This, state, XK_Alt_L))
  rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_LALT);

 if (MASK_HAS_BITS(This->xkeymap.remote_modifier_state, MapRightAltMask) &&
     !get_key_state(This, state, XK_Alt_R) && !get_key_state(This, state, XK_Mode_switch)
     && !get_key_state(This, state, XK_ISO_Level3_Shift))
  rdp_send_scancode(This, ev_time, RDP_KEYRELEASE, SCANCODE_CHAR_RALT);

 reset_winkey(This, ev_time);

 if (This->numlock_sync)
  rdp_send_input(This, ev_time, RDP_INPUT_SYNCHRONIZE, 0, ui_get_numlock_state(This, state), 0);
}
