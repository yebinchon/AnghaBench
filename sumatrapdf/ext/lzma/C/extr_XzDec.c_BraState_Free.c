
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* Free ) (TYPE_1__*,void*) ;} ;
typedef TYPE_1__ ISzAlloc ;


 int stub1 (TYPE_1__*,void*) ;

void BraState_Free(void *pp, ISzAlloc *alloc)
{
  alloc->Free(alloc, pp);
}
