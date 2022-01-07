
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t num; size_t numAllocated; int * streams; } ;
struct TYPE_7__ {int (* Free ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CXzs ;


 int Xz_Free (int *,TYPE_1__*) ;
 int stub1 (TYPE_1__*,int *) ;

void Xzs_Free(CXzs *p, ISzAlloc *alloc)
{
  size_t i;
  for (i = 0; i < p->num; i++)
    Xz_Free(&p->streams[i], alloc);
  alloc->Free(alloc, p->streams);
  p->num = p->numAllocated = 0;
  p->streams = 0;
}
