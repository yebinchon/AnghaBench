
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_13__ {scalar_t__ next_packet; } ;
struct TYPE_12__ {scalar_t__ end; } ;
typedef TYPE_1__* STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int False ;




 int True ;
 int process_data_pdu (TYPE_2__*,TYPE_1__*,int *) ;
 int process_demand_active (TYPE_2__*,TYPE_1__*) ;
 int process_redirect_pdu (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* rdp_recv (TYPE_2__*,int*) ;
 int unimpl (char*,int) ;

BOOL
rdp_loop(RDPCLIENT * This, BOOL * deactivated, uint32 * ext_disc_reason)
{
 uint8 type;
 BOOL disc = False;
 BOOL cont = True;
 STREAM s;

 while (cont)
 {
  s = rdp_recv(This, &type);
  if (s == ((void*)0))
   return False;
  switch (type)
  {
   case 129:
    if(!process_demand_active(This, s))
     return False;
    *deactivated = False;
    break;
   case 130:
    DEBUG(("RDP_PDU_DEACTIVATE\n"));
    *deactivated = True;
    break;
   case 128:
    return process_redirect_pdu(This, s);
    break;
   case 131:
    disc = process_data_pdu(This, s, ext_disc_reason);
    break;
   case 0:
    break;
   default:
    unimpl("PDU %d\n", type);
  }
  if (disc)
   return False;
  cont = This->next_packet < s->end;
 }
 return True;
}
