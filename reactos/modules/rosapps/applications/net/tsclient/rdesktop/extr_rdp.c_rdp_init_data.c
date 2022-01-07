
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ encryption; } ;
typedef int * STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int SEC_ENCRYPT ;
 int rdp_hdr ;
 int s_push_layer (int *,int ,int) ;
 int * sec_init (TYPE_1__*,int ,int) ;

__attribute__((used)) static STREAM
rdp_init_data(RDPCLIENT * This, int maxlen)
{
 STREAM s;

 s = sec_init(This, This->encryption ? SEC_ENCRYPT : 0, maxlen + 18);

 if(s == ((void*)0))
  return ((void*)0);

 s_push_layer(s, rdp_hdr, 18);

 return s;
}
