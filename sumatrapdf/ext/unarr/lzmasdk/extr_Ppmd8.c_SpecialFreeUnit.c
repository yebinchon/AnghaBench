
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {int * UnitsStart; } ;
typedef TYPE_1__ CPpmd8 ;
typedef int Byte ;


 int EMPTY_NODE ;
 int InsertNode (TYPE_1__*,void*,int ) ;
 int UNIT_SIZE ;

__attribute__((used)) static void SpecialFreeUnit(CPpmd8 *p, void *ptr)
{
  if ((Byte *)ptr != p->UnitsStart)
    InsertNode(p, ptr, 0);
  else
  {



    p->UnitsStart += UNIT_SIZE;
  }
}
