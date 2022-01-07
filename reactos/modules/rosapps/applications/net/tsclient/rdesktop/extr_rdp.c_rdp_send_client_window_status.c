
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int current_status; } ;
struct TYPE_7__ {TYPE_1__ rdp; int height; int width; } ;
typedef int * STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int RDP_DATA_PDU_CLIENT_WINDOW_STATUS ;
 int True ;
 int out_uint16_le (int *,int ) ;
 int out_uint32_le (int *,int) ;
 int * rdp_init_data (TYPE_2__*,int) ;
 int rdp_send_data (TYPE_2__*,int *,int ) ;
 int s_mark_end (int *) ;

BOOL
rdp_send_client_window_status(RDPCLIENT * This, int status)
{
 STREAM s;

 if (This->rdp.current_status == status)
  return True;

 s = rdp_init_data(This, 12);

 if(s == ((void*)0))
  return False;

 out_uint32_le(s, status);

 switch (status)
 {
  case 0:
   break;

  case 1:
   out_uint32_le(s, 0);
   out_uint16_le(s, This->width);
   out_uint16_le(s, This->height);
   break;
 }

 s_mark_end(s);
 This->rdp.current_status = status;
 return rdp_send_data(This, s, RDP_DATA_PDU_CLIENT_WINDOW_STATUS);
}
