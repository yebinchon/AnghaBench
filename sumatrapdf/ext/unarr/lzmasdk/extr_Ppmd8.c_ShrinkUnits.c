
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* FreeList; } ;
typedef TYPE_1__ CPpmd8 ;


 int InsertNode (TYPE_1__*,void*,unsigned int) ;
 int MyMem12Cpy (void*,void*,unsigned int) ;
 void* RemoveNode (TYPE_1__*,unsigned int) ;
 int SplitBlock (TYPE_1__*,void*,unsigned int,unsigned int) ;
 unsigned int U2I (unsigned int) ;

__attribute__((used)) static void *ShrinkUnits(CPpmd8 *p, void *oldPtr, unsigned oldNU, unsigned newNU)
{
  unsigned i0 = U2I(oldNU);
  unsigned i1 = U2I(newNU);
  if (i0 == i1)
    return oldPtr;
  if (p->FreeList[i1] != 0)
  {
    void *ptr = RemoveNode(p, i1);
    MyMem12Cpy(ptr, oldPtr, newNU);
    InsertNode(p, oldPtr, i0);
    return ptr;
  }
  SplitBlock(p, oldPtr, i0, i1);
  return oldPtr;
}
