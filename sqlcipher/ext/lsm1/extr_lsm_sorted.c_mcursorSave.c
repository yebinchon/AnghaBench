
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* aTree; } ;
typedef TYPE_1__ MultiCursor ;


 int CURSOR_DATA_TREE0 ;
 int CURSOR_DATA_TREE1 ;
 int LSM_OK ;
 int mcursorFreeComponents (TYPE_1__*) ;
 int multiCursorCacheKey (TYPE_1__*,int*) ;

int mcursorSave(MultiCursor *pCsr){
  int rc = LSM_OK;
  if( pCsr->aTree ){
    int iTree = pCsr->aTree[1];
    if( iTree==CURSOR_DATA_TREE0 || iTree==CURSOR_DATA_TREE1 ){
      multiCursorCacheKey(pCsr, &rc);
    }
  }
  mcursorFreeComponents(pCsr);
  return rc;
}
