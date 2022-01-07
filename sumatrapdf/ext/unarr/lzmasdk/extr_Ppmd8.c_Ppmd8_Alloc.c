
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_9__ {int Size; int AlignOffset; int * Base; } ;
struct TYPE_8__ {scalar_t__ (* Alloc ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CPpmd8 ;
typedef int Byte ;
typedef int Bool ;


 int False ;
 int Ppmd8_Free (TYPE_2__*,TYPE_1__*) ;
 int True ;
 scalar_t__ stub1 (TYPE_1__*,int) ;

Bool Ppmd8_Alloc(CPpmd8 *p, UInt32 size, ISzAlloc *alloc)
{
  if (p->Base == 0 || p->Size != size)
  {
    Ppmd8_Free(p, alloc);
    p->AlignOffset =



        4 - (size & 3);

    if ((p->Base = (Byte *)alloc->Alloc(alloc, p->AlignOffset + size)) == 0)
      return False;
    p->Size = size;
  }
  return True;
}
