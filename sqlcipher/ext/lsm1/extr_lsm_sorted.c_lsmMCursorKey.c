
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TreeCursor ;
struct TYPE_5__ {int nData; void* pData; } ;
struct TYPE_6__ {int flags; int* aTree; int eType; TYPE_1__ key; int ** apTreeCsr; } ;
typedef TYPE_2__ MultiCursor ;


 int CURSOR_DATA_TREE0 ;
 int CURSOR_DATA_TREE1 ;
 int CURSOR_SEEK_EQ ;
 int LSM_OK ;
 int assert (int) ;
 int lsmTreeCursorKey (int *,int ,void**,int*) ;
 scalar_t__ memcmp (void*,void*,int) ;
 int multiCursorGetKey (TYPE_2__*,int,int*,void**,int*) ;

int lsmMCursorKey(MultiCursor *pCsr, void **ppKey, int *pnKey){
  if( (pCsr->flags & CURSOR_SEEK_EQ) || pCsr->aTree==0 ){
    *pnKey = pCsr->key.nData;
    *ppKey = pCsr->key.pData;
  }else{
    int iKey = pCsr->aTree[1];

    if( iKey==CURSOR_DATA_TREE0 || iKey==CURSOR_DATA_TREE1 ){
      TreeCursor *pTreeCsr = pCsr->apTreeCsr[iKey-CURSOR_DATA_TREE0];
      lsmTreeCursorKey(pTreeCsr, 0, ppKey, pnKey);
    }else{
      int nKey;


      void *pKey;
      int eType;
      multiCursorGetKey(pCsr, iKey, &eType, &pKey, &nKey);
      assert( eType==pCsr->eType );
      assert( nKey==pCsr->key.nData );
      assert( memcmp(pKey, pCsr->key.pData, nKey)==0 );


      nKey = pCsr->key.nData;
      if( nKey==0 ){
        *ppKey = 0;
      }else{
        *ppKey = pCsr->key.pData;
      }
      *pnKey = nKey;
    }
  }
  return LSM_OK;
}
