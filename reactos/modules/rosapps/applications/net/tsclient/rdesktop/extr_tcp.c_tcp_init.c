
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_7__ {scalar_t__ size; int * data; int * end; int * p; } ;
struct TYPE_6__ {TYPE_2__ out; } ;
struct TYPE_8__ {int disconnect_reason; TYPE_1__ tcp; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDPCLIENT ;


 void* realloc (int *,scalar_t__) ;

STREAM
tcp_init(RDPCLIENT * This, uint32 maxlen)
{
 if (maxlen > This->tcp.out.size)
 {
  void * p;

  p = realloc(This->tcp.out.data, maxlen);

  if (p == ((void*)0))
  {
   This->disconnect_reason = 262;
   return ((void*)0);
  }

  This->tcp.out.data = (uint8 *)p;
  This->tcp.out.size = maxlen;
 }

 This->tcp.out.p = This->tcp.out.data;
 This->tcp.out.end = This->tcp.out.data + This->tcp.out.size;
 return &This->tcp.out;
}
