
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * STREAM ;
typedef int RDPCLIENT ;


 int * iso_init (int *,int) ;
 int mcs_hdr ;
 int s_push_layer (int *,int ,int) ;

STREAM
mcs_init(RDPCLIENT * This, int length)
{
 STREAM s;

 s = iso_init(This, length + 8);

 if(s == ((void*)0))
  return ((void*)0);

 s_push_layer(s, mcs_hdr, 8);

 return s;
}
