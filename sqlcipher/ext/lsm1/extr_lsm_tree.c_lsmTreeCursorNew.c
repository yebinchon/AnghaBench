
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pEnv; } ;
typedef TYPE_1__ lsm_db ;
typedef int TreeCursor ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int * lsmMalloc (int ,int) ;
 int treeCursorInit (TYPE_1__*,int,int *) ;

int lsmTreeCursorNew(lsm_db *pDb, int bOld, TreeCursor **ppCsr){
  TreeCursor *pCsr;
  *ppCsr = pCsr = lsmMalloc(pDb->pEnv, sizeof(TreeCursor));
  if( pCsr ){
    treeCursorInit(pDb, bOld, pCsr);
    return LSM_OK;
  }
  return LSM_NOMEM_BKPT;
}
