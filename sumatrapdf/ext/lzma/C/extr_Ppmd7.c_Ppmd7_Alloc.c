
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_9__ {int Size; int AlignOffset; int * Base; } ;
struct TYPE_8__ {scalar_t__ (* Alloc ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CPpmd7 ;
typedef int Byte ;
typedef int Bool ;


 int False ;
 int Ppmd7_Free (TYPE_2__*,TYPE_1__*) ;
 int True ;
 scalar_t__ UNIT_SIZE ;
 scalar_t__ stub1 (TYPE_1__*,scalar_t__) ;

Bool Ppmd7_Alloc(CPpmd7 *p, UInt32 size, ISzAlloc *alloc)
{
  if (p->Base == 0 || p->Size != size)
  {
    Ppmd7_Free(p, alloc);
    p->AlignOffset =



        4 - (size & 3);

    if ((p->Base = (Byte *)alloc->Alloc(alloc, p->AlignOffset + size

        + UNIT_SIZE

        )) == 0)
      return False;
    p->Size = size;
  }
  return True;
}
