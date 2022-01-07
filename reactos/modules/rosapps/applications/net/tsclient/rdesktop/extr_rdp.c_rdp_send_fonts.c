
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int * STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int RDP_DATA_PDU_FONT2 ;
 int out_uint16 (int *,int ) ;
 int out_uint16_le (int *,int) ;
 int * rdp_init_data (int *,int) ;
 int rdp_send_data (int *,int *,int ) ;
 int s_mark_end (int *) ;

__attribute__((used)) static BOOL
rdp_send_fonts(RDPCLIENT * This, uint16 seq)
{
 STREAM s;

 s = rdp_init_data(This, 8);

 if(s == ((void*)0))
  return False;

 out_uint16(s, 0);
 out_uint16_le(s, 0);
 out_uint16_le(s, seq);
 out_uint16_le(s, 0x32);

 s_mark_end(s);
 return rdp_send_data(This, s, RDP_DATA_PDU_FONT2);
}
