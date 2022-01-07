
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bufferBase; int directInput; } ;
struct TYPE_6__ {int (* Free ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CMatchFinder ;


 int stub1 (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void LzInWindow_Free(CMatchFinder *p, ISzAlloc *alloc)
{
  if (!p->directInput)
  {
    alloc->Free(alloc, p->bufferBase);
    p->bufferBase = 0;
  }
}
