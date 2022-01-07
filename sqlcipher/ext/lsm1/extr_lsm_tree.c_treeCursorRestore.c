
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nKey; } ;
typedef TYPE_1__ TreeKey ;
struct TYPE_7__ {TYPE_1__* pSave; } ;
typedef TYPE_2__ TreeCursor ;


 int LSM_OK ;
 int TKV_KEY (TYPE_1__*) ;
 int lsmTreeCursorSeek (TYPE_2__*,int ,int ,int*) ;

__attribute__((used)) static int treeCursorRestore(TreeCursor *pCsr, int *pRes){
  int rc = LSM_OK;
  if( pCsr->pSave ){
    TreeKey *pKey = pCsr->pSave;
    pCsr->pSave = 0;
    if( pRes ){
      rc = lsmTreeCursorSeek(pCsr, TKV_KEY(pKey), pKey->nKey, pRes);
    }
  }
  return rc;
}
