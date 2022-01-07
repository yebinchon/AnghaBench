
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* apShm; scalar_t__ nShm; } ;
typedef TYPE_1__ lsm_db ;


 int assert (int) ;
 void* treeShmptrUnsafe (TYPE_1__*,int) ;

__attribute__((used)) static void *treeShmptr(lsm_db *pDb, u32 iPtr){

  assert( (iPtr>>15)<(u32)pDb->nShm );
  assert( pDb->apShm[iPtr>>15] );

  return iPtr ? treeShmptrUnsafe(pDb, iPtr) : 0;
}
