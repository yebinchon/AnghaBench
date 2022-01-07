
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int STREAM ;


 int DEBUG (char*) ;
 int in_uint32_le (int ,int ) ;

void
process_disconnect_pdu(STREAM s, uint32 * ext_disc_reason)
{
 in_uint32_le(s, *ext_disc_reason);

 DEBUG(("Received disconnect PDU\n"));
}
