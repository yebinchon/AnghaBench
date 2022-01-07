
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int decoder; } ;
typedef int ISzAlloc ;
typedef TYPE_1__ CXzUnpacker ;


 int MixCoder_Construct (int *,int *) ;
 int XzUnpacker_Init (TYPE_1__*) ;

void XzUnpacker_Construct(CXzUnpacker *p, ISzAlloc *alloc)
{
  MixCoder_Construct(&p->decoder, alloc);
  XzUnpacker_Init(p);
}
