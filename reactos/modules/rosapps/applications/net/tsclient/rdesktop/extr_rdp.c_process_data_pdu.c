
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
struct stream {int* p; int* data; int size; int* end; int* rdp_hdr; } ;
struct TYPE_9__ {scalar_t__ hist; struct stream ns; } ;
struct TYPE_10__ {int disconnect_reason; TYPE_1__ mppc_dict; } ;
typedef struct stream* STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int False ;







 int RDP_MPPC_COMPRESSED ;
 scalar_t__ RDP_MPPC_DICT_SIZE ;
 int True ;
 int error (char*) ;
 int event_logon (TYPE_2__*) ;
 int in_uint16 (struct stream*,int) ;
 int in_uint8 (struct stream*,int) ;
 int in_uint8s (struct stream*,int) ;
 int memcpy (int*,unsigned char*,scalar_t__) ;
 int mppc_expand (TYPE_2__*,int*,int,int,scalar_t__*,scalar_t__*) ;
 int process_disconnect_pdu (struct stream*,scalar_t__*) ;
 int process_pointer_pdu (TYPE_2__*,struct stream*) ;
 int process_update_pdu (TYPE_2__*,struct stream*) ;
 void* realloc (int*,scalar_t__) ;
 int ui_bell (TYPE_2__*) ;
 int unimpl (char*,int) ;

__attribute__((used)) static BOOL
process_data_pdu(RDPCLIENT * This, STREAM s, uint32 * ext_disc_reason)
{
 uint8 data_pdu_type;
 uint8 ctype;
 uint16 clen;
 uint32 len;

 uint32 roff, rlen;

 struct stream *ns = &(This->mppc_dict.ns);

 in_uint8s(s, 6);
 in_uint16(s, len);
 in_uint8(s, data_pdu_type);
 in_uint8(s, ctype);
 in_uint16(s, clen);
 clen -= 18;

 if (ctype & RDP_MPPC_COMPRESSED)
 {
  void * p;

  if (len > RDP_MPPC_DICT_SIZE)
   error("error decompressed packet size exceeds max\n");
  if (mppc_expand(This, s->p, clen, ctype, &roff, &rlen) == -1)
   error("error while decompressing packet\n");




  p = realloc(ns->data, rlen);

  if(p == ((void*)0))
  {
   This->disconnect_reason = 262;
   return True;
  }

  ns->data = (uint8 *) p;

  memcpy((ns->data), (unsigned char *) (This->mppc_dict.hist + roff), rlen);

  ns->size = rlen;
  ns->end = (ns->data + ns->size);
  ns->p = ns->data;
  ns->rdp_hdr = ns->p;

  s = ns;
 }

 switch (data_pdu_type)
 {
  case 128:
   process_update_pdu(This, s);
   break;

  case 133:
   DEBUG(("Received Control PDU\n"));
   break;

  case 129:
   DEBUG(("Received Sync PDU\n"));
   break;

  case 130:
   process_pointer_pdu(This, s);
   break;

  case 134:
   ui_bell(This);
   break;

  case 131:
   DEBUG(("Received Logon PDU\n"));
   event_logon(This);

   break;

  case 132:
   process_disconnect_pdu(s, ext_disc_reason);






   break;

  default:
   unimpl("data PDU %d\n", data_pdu_type);
 }
 return False;
}
