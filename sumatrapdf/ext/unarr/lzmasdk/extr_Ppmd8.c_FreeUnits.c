
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CPpmd8 ;


 int InsertNode (int *,void*,int ) ;
 int U2I (unsigned int) ;

__attribute__((used)) static void FreeUnits(CPpmd8 *p, void *ptr, unsigned nu)
{
  InsertNode(p, ptr, U2I(nu));
}
