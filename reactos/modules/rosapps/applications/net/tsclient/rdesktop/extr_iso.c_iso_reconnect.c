
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 scalar_t__ ISO_PDU_CC ;
 int True ;
 int error (char*,scalar_t__) ;
 int * iso_recv_msg (int *,scalar_t__*,int *) ;
 int iso_send_connection_request (int *,char*) ;
 int tcp_connect (int *,char*) ;
 int tcp_disconnect (int *) ;

BOOL
iso_reconnect(RDPCLIENT * This, char *server, char *cookie)
{
 uint8 code = 0;

 if (!tcp_connect(This, server))
  return False;

 if (!iso_send_connection_request(This, cookie))
  return False;

 if (iso_recv_msg(This, &code, ((void*)0)) == ((void*)0))
  return False;

 if (code != ISO_PDU_CC)
 {
  error("expected CC, got 0x%x\n", code);
  tcp_disconnect(This);
  return False;
 }

 return True;
}
