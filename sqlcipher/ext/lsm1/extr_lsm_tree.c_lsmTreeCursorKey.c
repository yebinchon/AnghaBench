
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nKey; int flags; } ;
typedef TYPE_1__ TreeKey ;
struct TYPE_8__ {int blob; TYPE_1__* pSave; } ;
typedef TYPE_2__ TreeCursor ;


 int LSM_OK ;
 int assert (int ) ;
 TYPE_1__* csrGetKey (TYPE_2__*,int *,int*) ;
 int lsmTreeCursorValid (TYPE_2__*) ;

int lsmTreeCursorKey(TreeCursor *pCsr, int *pFlags, void **ppKey, int *pnKey){
  TreeKey *pTreeKey;
  int rc = LSM_OK;

  assert( lsmTreeCursorValid(pCsr) );

  pTreeKey = pCsr->pSave;
  if( !pTreeKey ){
    pTreeKey = csrGetKey(pCsr, &pCsr->blob, &rc);
  }
  if( rc==LSM_OK ){
    *pnKey = pTreeKey->nKey;
    if( pFlags ) *pFlags = pTreeKey->flags;
    *ppKey = (void *)&pTreeKey[1];
  }

  return rc;
}
