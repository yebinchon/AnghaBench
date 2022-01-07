
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int licence_issued; } ;
typedef int * STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int SEC_ENCRYPT ;
 int * mcs_init (TYPE_1__*,int) ;
 int s_push_layer (int *,int ,int) ;
 int sec_hdr ;

STREAM
sec_init(RDPCLIENT * This, uint32 flags, int maxlen)
{
 int hdrlen;
 STREAM s;

 if (!This->licence_issued)
  hdrlen = (flags & SEC_ENCRYPT) ? 12 : 4;
 else
  hdrlen = (flags & SEC_ENCRYPT) ? 12 : 0;
 s = mcs_init(This, maxlen + hdrlen);

 if(s == ((void*)0))
  return s;

 s_push_layer(s, sec_hdr, hdrlen);

 return s;
}
