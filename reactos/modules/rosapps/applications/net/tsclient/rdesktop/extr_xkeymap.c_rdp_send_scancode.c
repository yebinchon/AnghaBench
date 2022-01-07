
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
typedef int RDPCLIENT ;


 int DEBUG_KBD (char*) ;
 int KBD_FLAG_EXT ;
 int RDP_INPUT_SCANCODE ;
 int RDP_KEYRELEASE ;
 int SCANCODE_EXTENDED ;
 int rdp_send_input (int *,int ,int ,int,int,int ) ;
 int update_modifier_state (int *,int,int) ;

void
rdp_send_scancode(RDPCLIENT * This, uint32 time, uint16 flags, uint8 scancode)
{
 update_modifier_state(This, scancode, !(flags & RDP_KEYRELEASE));

 if (scancode & SCANCODE_EXTENDED)
 {
  DEBUG_KBD(("Sending extended scancode=0x%x, flags=0x%x\n",
      scancode & ~SCANCODE_EXTENDED, flags));
  rdp_send_input(This, time, RDP_INPUT_SCANCODE, flags | KBD_FLAG_EXT,
          scancode & ~SCANCODE_EXTENDED, 0);
 }
 else
 {
  DEBUG_KBD(("Sending scancode=0x%x, flags=0x%x\n", scancode, flags));
  rdp_send_input(This, time, RDP_INPUT_SCANCODE, flags, scancode, 0);
 }
}
