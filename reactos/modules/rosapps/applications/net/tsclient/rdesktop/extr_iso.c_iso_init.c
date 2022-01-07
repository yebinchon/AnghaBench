
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * STREAM ;
typedef int RDPCLIENT ;


 int iso_hdr ;
 int s_push_layer (int *,int ,int) ;
 int * tcp_init (int *,int) ;

STREAM
iso_init(RDPCLIENT * This, int length)
{
 STREAM s;

 s = tcp_init(This, length + 7);

 if(s == ((void*)0))
  return ((void*)0);

 s_push_layer(s, iso_hdr, 7);

 return s;
}
