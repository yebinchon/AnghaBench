
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_12__ {scalar_t__ use_rdp5; int rdp_shareid; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int False ;
 int RDP_CTL_COOPERATE ;
 int RDP_CTL_REQUEST_CONTROL ;
 int RDP_INPUT_SYNCHRONIZE ;
 int True ;
 int in_uint16_le (int ,int ) ;
 int in_uint32_le (int ,int ) ;
 int in_uint8s (int ,int ) ;
 int rdp_enum_bmpcache2 (TYPE_1__*) ;
 int rdp_process_server_caps (TYPE_1__*,int ,int ) ;
 int rdp_recv (TYPE_1__*,int *) ;
 int rdp_send_confirm_active (TYPE_1__*) ;
 int rdp_send_control (TYPE_1__*,int ) ;
 int rdp_send_fonts (TYPE_1__*,int) ;
 int rdp_send_input (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int rdp_send_synchronise (TYPE_1__*) ;
 int reset_order_state (TYPE_1__*) ;

__attribute__((used)) static BOOL
process_demand_active(RDPCLIENT * This, STREAM s)
{
 uint8 type;
 uint16 len_src_descriptor, len_combined_caps;

 in_uint32_le(s, This->rdp_shareid);
 in_uint16_le(s, len_src_descriptor);
 in_uint16_le(s, len_combined_caps);
 in_uint8s(s, len_src_descriptor);

 DEBUG(("DEMAND_ACTIVE(id=0x%x)\n", This->rdp_shareid));
 rdp_process_server_caps(This, s, len_combined_caps);

 if
 (
  !rdp_send_confirm_active(This) ||
  !rdp_send_synchronise(This) ||
  !rdp_send_control(This, RDP_CTL_COOPERATE) ||
  !rdp_send_control(This, RDP_CTL_REQUEST_CONTROL) ||
  !rdp_recv(This, &type) ||
  !rdp_recv(This, &type) ||
  !rdp_recv(This, &type) ||
  !rdp_send_input(This, 0, RDP_INPUT_SYNCHRONIZE, 0,
                                                                                        0, 0)
 )
  return False;

 if (This->use_rdp5)
 {
  if(!rdp_enum_bmpcache2(This) || !rdp_send_fonts(This, 3))
   return False;
 }
 else
 {
  if(!rdp_send_fonts(This, 1) || !rdp_send_fonts(This, 2))
   return False;
 }

 if(!rdp_recv(This, &type))
  return False;

 reset_order_state(This);
 return True;
}
