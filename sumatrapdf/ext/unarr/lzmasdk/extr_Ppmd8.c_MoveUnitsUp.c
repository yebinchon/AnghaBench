
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* FreeList; int * UnitsStart; } ;
typedef TYPE_1__ CPpmd8 ;
typedef int Byte ;


 int I2U (unsigned int) ;
 int InsertNode (TYPE_1__*,void*,unsigned int) ;
 int MyMem12Cpy (void*,void*,unsigned int) ;
 scalar_t__ REF (void*) ;
 void* RemoveNode (TYPE_1__*,unsigned int) ;
 int U2B (int ) ;
 unsigned int U2I (unsigned int) ;

__attribute__((used)) static void *MoveUnitsUp(CPpmd8 *p, void *oldPtr, unsigned nu)
{
  unsigned indx = U2I(nu);
  void *ptr;
  if ((Byte *)oldPtr > p->UnitsStart + 16 * 1024 || REF(oldPtr) > p->FreeList[indx])
    return oldPtr;
  ptr = RemoveNode(p, indx);
  MyMem12Cpy(ptr, oldPtr, nu);
  if ((Byte*)oldPtr != p->UnitsStart)
    InsertNode(p, oldPtr, indx);
  else
    p->UnitsStart += U2B(I2U(indx));
  return ptr;
}
