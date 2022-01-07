
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int False ;
 int ISO_PDU_CR ;
 int out_uint16 (int *,int ) ;
 int out_uint16_be (int *,int) ;
 int out_uint8 (int *,int) ;
 int out_uint8p (int *,char*,int) ;
 int s_mark_end (int *) ;
 scalar_t__ strlen (char*) ;
 int * tcp_init (int *,int) ;
 int tcp_send (int *,int *) ;

__attribute__((used)) static BOOL
iso_send_connection_request(RDPCLIENT * This, char *cookie)
{
 STREAM s;
 int cookielen = (int)strlen(cookie);
 int length = 11 + cookielen;

 s = tcp_init(This, length);

 if(s == ((void*)0))
  return False;

 out_uint8(s, 3);
 out_uint8(s, 0);
 out_uint16_be(s, length);

 out_uint8(s, length - 5);
 out_uint8(s, ISO_PDU_CR);
 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint8(s, 0);

 out_uint8p(s, cookie, cookielen);

 s_mark_end(s);
 return tcp_send(This, s);
}
