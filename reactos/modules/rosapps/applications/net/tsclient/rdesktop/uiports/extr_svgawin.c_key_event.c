
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KBD_FLAG_EXT ;
 int LED_CAP ;
 int LED_NUM ;
 int LED_SCR ;
 int MOUSE_FLAG_BUTTON4 ;
 int MOUSE_FLAG_BUTTON5 ;
 int MOUSE_FLAG_DOWN ;
 int RDP_INPUT_MOUSE ;
 int RDP_INPUT_SCANCODE ;
 int RDP_KEYPRESS ;
 int RDP_KEYRELEASE ;

 int SCANCODE_CAPSLOCK ;
 int SCANCODE_NUMLOCK ;
 int UpAndRunning ;
 int capslock ;
 int mouse_getx () ;
 int mouse_gety () ;
 int numlock ;
 int rdp_send_input (int ,int ,int,int,int ) ;
 int scrolllock ;
 int setled (int ,int) ;

void key_event(int scancode, int pressed)
{
  int rdpkey;
  int ext;

  if (!UpAndRunning)
    return;
  rdpkey = scancode;
  ext = 0;


  if ((scancode == SCANCODE_CAPSLOCK) && pressed)
  {
     capslock = !capslock;
     setled(LED_CAP, capslock);
  }
  if ((scancode == 128) && pressed)
  {
     scrolllock = !scrolllock;
     setled(LED_SCR, scrolllock);
  }

  if ((scancode == SCANCODE_NUMLOCK) && pressed)
  {
     numlock = !numlock;
     setled(LED_NUM, numlock);
  }

  switch (scancode)
  {
    case 142: rdpkey = 0xc8; ext = KBD_FLAG_EXT; break;
    case 145: rdpkey = 0xd0; ext = KBD_FLAG_EXT; break;
    case 143: rdpkey = 0xcd; ext = KBD_FLAG_EXT; break;
    case 144: rdpkey = 0xcb; ext = KBD_FLAG_EXT; break;
    case 135: rdpkey = 0xd1; ext = KBD_FLAG_EXT; break;
    case 134: rdpkey = 0xc9; ext = KBD_FLAG_EXT; break;
    case 140: rdpkey = 0xc7; ext = KBD_FLAG_EXT; break;
    case 141: rdpkey = 0xcf; ext = KBD_FLAG_EXT; break;
    case 139: rdpkey = 0xd2; ext = KBD_FLAG_EXT; break;
    case 132: rdpkey = 0xd3; ext = KBD_FLAG_EXT; break;
    case 138: rdpkey = 0x35; break;
    case 137: rdpkey = 0x1c; break;
    case 130: rdpkey = 0x1d; break;
    case 131: rdpkey = 0x38; break;
    case 136: rdpkey = 0x5b; ext = KBD_FLAG_EXT; break;
    case 129: rdpkey = 0x5c; ext = KBD_FLAG_EXT; break;
    case 127: rdpkey = 0x5d; ext = KBD_FLAG_EXT; break;
    case 133: rdpkey = 0x37; ext = KBD_FLAG_EXT; break;
    case 146:
    {
      if (pressed)
      {
        ext = KBD_FLAG_EXT;
        rdp_send_input(0, RDP_INPUT_SCANCODE, RDP_KEYPRESS | ext, 0x46, 0);
        rdp_send_input(0, RDP_INPUT_SCANCODE, RDP_KEYPRESS | ext, 0xc6, 0);
      }
      rdpkey = 0;
    }
    case 128: rdpkey = 0x46; break;
    case 112:
    {
      rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_DOWN | MOUSE_FLAG_BUTTON4,
                     mouse_getx(), mouse_gety());
      return;
    }
    case 113:
    {
      rdp_send_input(0, RDP_INPUT_MOUSE, MOUSE_FLAG_DOWN | MOUSE_FLAG_BUTTON5,
                     mouse_getx(), mouse_gety());
      return;
    }
  }

  if (pressed)
    rdp_send_input(0, RDP_INPUT_SCANCODE, RDP_KEYPRESS | ext, rdpkey, 0);
  else
    rdp_send_input(0, RDP_INPUT_SCANCODE, RDP_KEYRELEASE | ext, rdpkey, 0);


}
