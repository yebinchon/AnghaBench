
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int * STREAM ;
typedef int RDPCLIENT ;


 int ISO_PDU_DT ;
 int in_uint16_be (int *,int) ;
 int in_uint8 (int *,int) ;
 int in_uint8s (int *,int) ;
 int next_be (int *,int) ;
 int * tcp_recv (int *,int *,int) ;

__attribute__((used)) static STREAM
iso_recv_msg(RDPCLIENT * This, uint8 * code, uint8 * rdpver)
{
 STREAM s;
 uint16 length;
 uint8 version;

 s = tcp_recv(This, ((void*)0), 4);
 if (s == ((void*)0))
  return ((void*)0);
 in_uint8(s, version);
 if (rdpver != ((void*)0))
  *rdpver = version;
 if (version == 3)
 {
  in_uint8s(s, 1);
  in_uint16_be(s, length);
 }
 else
 {
  in_uint8(s, length);
  if (length & 0x80)
  {
   length &= ~0x80;
   next_be(s, length);
  }
 }
 s = tcp_recv(This, s, length - 4);
 if (s == ((void*)0))
  return ((void*)0);
 if (version != 3)
  return s;
 in_uint8s(s, 1);
 in_uint8(s, *code);
 if (*code == ISO_PDU_DT)
 {
  in_uint8s(s, 1);
  return s;
 }
 in_uint8s(s, 5);
 return s;
}
