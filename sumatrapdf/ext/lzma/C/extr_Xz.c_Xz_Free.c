
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ blocks; scalar_t__ numBlocksAllocated; scalar_t__ numBlocks; } ;
struct TYPE_6__ {int (* Free ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CXzStream ;


 int stub1 (TYPE_1__*,scalar_t__) ;

void Xz_Free(CXzStream *p, ISzAlloc *alloc)
{
  alloc->Free(alloc, p->blocks);
  p->numBlocks = p->numBlocksAllocated = 0;
  p->blocks = 0;
}
