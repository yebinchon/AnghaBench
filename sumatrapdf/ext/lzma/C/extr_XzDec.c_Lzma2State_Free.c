
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* Free ) (TYPE_1__*,void*) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef int CLzma2Dec ;


 int Lzma2Dec_Free (int *,TYPE_1__*) ;
 int stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static void Lzma2State_Free(void *pp, ISzAlloc *alloc)
{
  Lzma2Dec_Free((CLzma2Dec *)pp, alloc);
  alloc->Free(alloc, pp);
}
