
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i; } ;
struct TYPE_6__ {int flags; TYPE_1__ u; } ;
typedef TYPE_2__ Mem ;


 int MEM_Int ;
 int MEM_Null ;
 double sqlite3VdbeRealValue (TYPE_2__*) ;

int sqlite3VdbeBooleanValue(Mem *pMem, int ifNull){
  if( pMem->flags & MEM_Int ) return pMem->u.i!=0;
  if( pMem->flags & MEM_Null ) return ifNull;
  return sqlite3VdbeRealValue(pMem)!=0.0;
}
