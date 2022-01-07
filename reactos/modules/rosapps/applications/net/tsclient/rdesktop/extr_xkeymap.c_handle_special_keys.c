
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_11__ {int numlock_sync; int win_button_size; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int RDP_INPUT_SCANCODE ;
 int RDP_INPUT_SYNCHRONIZE ;
 int RDP_KEYPRESS ;
 int RDP_KEYRELEASE ;
 int SCANCODE_EXTENDED ;
 int True ;
 int XK_Alt_L ;
 int XK_Alt_R ;

 int XK_Control_L ;
 int XK_Control_R ;
 int get_key_state (TYPE_1__*,unsigned int,int ) ;
 int rdp_send_input (TYPE_1__*,int,int ,int ,int,int ) ;
 int rdp_send_scancode (TYPE_1__*,int,int ,int) ;
 int read_keyboard_state (TYPE_1__*) ;
 int send_winkey (TYPE_1__*,int,int ,int ) ;
 int ui_get_numlock_state (TYPE_1__*,int ) ;
 int ui_seamless_toggle (TYPE_1__*) ;
 int xwin_toggle_fullscreen (TYPE_1__*) ;

BOOL
handle_special_keys(RDPCLIENT * This, uint32 keysym, unsigned int state, uint32 ev_time, BOOL pressed)
{
 switch (keysym)
 {
  case 131:
   if ((get_key_state(This, state, XK_Alt_L) || get_key_state(This, state, XK_Alt_R))
       && (get_key_state(This, state, XK_Control_L)
    || get_key_state(This, state, XK_Control_R)))
   {

    if (pressed)
     xwin_toggle_fullscreen(This);
    return True;
   }
   break;

  case 139:

   if (pressed)
   {
    rdp_send_scancode(This, ev_time, RDP_KEYPRESS,
        (SCANCODE_EXTENDED | 0x46));
    rdp_send_scancode(This, ev_time, RDP_KEYPRESS,
        (SCANCODE_EXTENDED | 0xc6));
   }

   return True;
   break;

  case 132:
   if (pressed)
   {
    rdp_send_input(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0xe1, 0);
    rdp_send_input(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0x1d, 0);
    rdp_send_input(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0x45, 0);
    rdp_send_input(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0xe1, 0);
    rdp_send_input(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0x9d, 0);
    rdp_send_input(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYPRESS, 0xc5, 0);
   }
   else
   {

    rdp_send_input(This, ev_time, RDP_INPUT_SCANCODE, RDP_KEYRELEASE,
            0x1d, 0);
   }
   return True;
   break;

  case 136:
  case 130:
  case 138:
   send_winkey(This, ev_time, pressed, True);
   return True;
   break;

  case 135:
  case 129:
  case 137:
   send_winkey(This, ev_time, pressed, False);
   return True;
   break;

  case 128:

   if (This->win_button_size
       && (get_key_state(This, state, XK_Alt_L) || get_key_state(This, state, XK_Alt_R)))
    return True;
   break;

  case 134:

   if (This->numlock_sync && !pressed)
    rdp_send_input(This, 0, RDP_INPUT_SYNCHRONIZE, 0,
            ui_get_numlock_state(This, read_keyboard_state(This)), 0);


   return True;
   break;
  case 133:

   if (pressed)
    ui_seamless_toggle(This);
   break;

 }
 return False;
}
