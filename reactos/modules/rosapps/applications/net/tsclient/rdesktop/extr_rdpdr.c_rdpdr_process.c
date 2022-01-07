
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef char uint8 ;
typedef int uint32 ;
struct TYPE_7__ {scalar_t__ p; scalar_t__ end; } ;
typedef TYPE_1__* STREAM ;
typedef int RDPCLIENT ;


 int DEBUG (char*) ;
 int hexdump (scalar_t__,scalar_t__) ;
 int in_uint32 (TYPE_1__*,int ) ;
 int in_uint8p (TYPE_1__*,char*,int) ;
 int printercache_process (int *,TYPE_1__*) ;
 int printf (char*) ;
 int rdpdr_process_irp (int *,TYPE_1__*) ;
 int rdpdr_send_available (int *) ;
 int rdpdr_send_clientcapabilty (int *) ;
 int rdpdr_send_connect (int *) ;
 int rdpdr_send_name (int *) ;
 int unimpl (char*,char,char,char,char) ;

__attribute__((used)) static void
rdpdr_process(RDPCLIENT * This, STREAM s)
{
 uint32 handle;
 uint8 *magic;





 in_uint8p(s, magic, 4);

 if ((magic[0] == 'r') && (magic[1] == 'D'))
 {
  if ((magic[2] == 'R') && (magic[3] == 'I'))
  {
   rdpdr_process_irp(This, s);
   return;
  }
  if ((magic[2] == 'n') && (magic[3] == 'I'))
  {
   rdpdr_send_connect(This);
   rdpdr_send_name(This);
   return;
  }
  if ((magic[2] == 'C') && (magic[3] == 'C'))
  {

   rdpdr_send_clientcapabilty(This);
   rdpdr_send_available(This);
   return;
  }
  if ((magic[2] == 'r') && (magic[3] == 'd'))
  {

   in_uint32(s, handle);



   return;
  }
  if ((magic[2] == 'P') && (magic[3] == 'S'))
  {

   return;
  }
 }
 if ((magic[0] == 'R') && (magic[1] == 'P'))
 {
  if ((magic[2] == 'C') && (magic[3] == 'P'))
  {
   printercache_process(This, s);
   return;
  }
 }
 unimpl("RDPDR packet type %c%c%c%c\n", magic[0], magic[1], magic[2], magic[3]);
}
