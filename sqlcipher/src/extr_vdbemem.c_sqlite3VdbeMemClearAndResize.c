
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int szMalloc; int zMalloc; int z; } ;
typedef TYPE_1__ Mem ;


 scalar_t__ CORRUPT_DB ;
 int MEM_Dyn ;
 int MEM_Int ;
 int MEM_Null ;
 int MEM_Real ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3VdbeMemGrow (TYPE_1__*,int,int ) ;

int sqlite3VdbeMemClearAndResize(Mem *pMem, int szNew){
  assert( CORRUPT_DB || szNew>0 );
  assert( (pMem->flags & MEM_Dyn)==0 || pMem->szMalloc==0 );
  if( pMem->szMalloc<szNew ){
    return sqlite3VdbeMemGrow(pMem, szNew, 0);
  }
  assert( (pMem->flags & MEM_Dyn)==0 );
  pMem->z = pMem->zMalloc;
  pMem->flags &= (MEM_Null|MEM_Int|MEM_Real);
  return SQLITE_OK;
}
