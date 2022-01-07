
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int * STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int RDP_DATA_PDU_INPUT ;
 int out_uint16 (int *,int ) ;
 int out_uint16_le (int *,int) ;
 int out_uint32_le (int *,int ) ;
 int * rdp_init_data (int *,int) ;
 int rdp_send_data (int *,int *,int ) ;
 int s_mark_end (int *) ;

BOOL
rdp_send_input(RDPCLIENT * This, uint32 time, uint16 message_type, uint16 device_flags, uint16 param1, uint16 param2)
{
 STREAM s;

 s = rdp_init_data(This, 16);

 if(s == ((void*)0))
  return False;

 out_uint16_le(s, 1);
 out_uint16(s, 0);

 out_uint32_le(s, time);
 out_uint16_le(s, message_type);
 out_uint16_le(s, device_flags);
 out_uint16_le(s, param1);
 out_uint16_le(s, param2);

 s_mark_end(s);
 return rdp_send_data(This, s, RDP_DATA_PDU_INPUT);
}
