
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iNode; int blob; int pSave; } ;
typedef TYPE_1__ TreeCursor ;


 int LSM_OK ;
 int csrGetKey (TYPE_1__*,int *,int*) ;

int lsmTreeCursorSave(TreeCursor *pCsr){
  int rc = LSM_OK;
  if( pCsr && pCsr->pSave==0 ){
    int iNode = pCsr->iNode;
    if( iNode>=0 ){
      pCsr->pSave = csrGetKey(pCsr, &pCsr->blob, &rc);
    }
    pCsr->iNode = -1;
  }
  return rc;
}
