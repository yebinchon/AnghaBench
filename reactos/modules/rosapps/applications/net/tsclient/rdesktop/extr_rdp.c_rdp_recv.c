
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_12__ {int packetno; } ;
struct TYPE_14__ {int * next_packet; TYPE_1__ rdp; } ;
struct TYPE_13__ {int * p; int * end; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDPCLIENT ;


 int DEBUG (char*) ;
 int hexdump (int *,int) ;
 int in_uint16_le (TYPE_2__*,int) ;
 int in_uint8s (TYPE_2__*,int) ;
 int rdp5_process (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* sec_recv (TYPE_3__*,int*) ;

__attribute__((used)) static STREAM
rdp_recv(RDPCLIENT * This, uint8 * type)
{
 static STREAM rdp_s;
 uint16 length, pdu_type;
 uint8 rdpver;

 if ((rdp_s == ((void*)0)) || (This->next_packet >= rdp_s->end) || (This->next_packet == ((void*)0)))
 {
  rdp_s = sec_recv(This, &rdpver);
  if (rdp_s == ((void*)0))
   return ((void*)0);
  if (rdpver == 0xff)
  {
   This->next_packet = rdp_s->end;
   *type = 0;
   return rdp_s;
  }
  else if (rdpver != 3)
  {

   if(!rdp5_process(This, rdp_s))
    return ((void*)0);
   *type = 0;
   return rdp_s;
  }

  This->next_packet = rdp_s->p;
 }
 else
 {
  rdp_s->p = This->next_packet;
 }

 in_uint16_le(rdp_s, length);

 if (length == 0x8000)
 {
  This->next_packet += 8;
  *type = 0;
  return rdp_s;
 }
 in_uint16_le(rdp_s, pdu_type);
 in_uint8s(rdp_s, 2);
 *type = pdu_type & 0xf;






 This->next_packet += length;
 return rdp_s;
}
