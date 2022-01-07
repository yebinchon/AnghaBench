
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u32 ;
typedef int lsm_db ;
struct TYPE_14__ {scalar_t__ iRoot; int nHeight; int iTransId; } ;
typedef TYPE_1__ TreeRoot ;
struct TYPE_15__ {scalar_t__* aiKeyPtr; } ;
typedef TYPE_2__ TreeNode ;
struct TYPE_16__ {int flags; int nKey; } ;
typedef TYPE_3__ TreeKey ;
struct TYPE_17__ {int iNode; int* aiCell; TYPE_2__** apTreeNode; TYPE_1__* pRoot; int * pDb; } ;
typedef TYPE_4__ TreeCursor ;
struct TYPE_18__ {int member_1; int member_0; } ;
typedef TYPE_5__ TreeBlob ;


 int LSM_CONTIGUOUS ;
 int LSM_OK ;
 int TKV_LOADKEY ;
 int assert (int) ;
 scalar_t__ getChildPtr (TYPE_2__*,int ,int) ;
 scalar_t__ lsmTreeCursorValid (TYPE_4__*) ;
 int tblobFree (int *,TYPE_5__*) ;
 int treeCsrCompare (TYPE_4__*,void*,int,int*) ;
 int treeCursorRestore (TYPE_4__*,int ) ;
 int treeKeycmp (void*,int ,void*,int) ;
 TYPE_3__* treeShmkey (int *,scalar_t__,int ,TYPE_5__*,int*) ;
 scalar_t__ treeShmptrUnsafe (int *,scalar_t__) ;

int lsmTreeCursorSeek(TreeCursor *pCsr, void *pKey, int nKey, int *pRes){
  int rc = LSM_OK;
  lsm_db *pDb = pCsr->pDb;
  TreeRoot *pRoot = pCsr->pRoot;
  u32 iNodePtr;


  treeCursorRestore(pCsr, 0);

  iNodePtr = pRoot->iRoot;
  if( iNodePtr==0 ){

    assert( rc!=LSM_OK || pRoot->iRoot==0 );
    *pRes = -1;
    pCsr->iNode = -1;
  }else{
    TreeBlob b = {0, 0};
    int res = 0;
    int iNode = -1;
    while( iNodePtr ){
      TreeNode *pNode;
      int iTest;
      u32 iTreeKey;
      TreeKey *pTreeKey;

      pNode = (TreeNode *)treeShmptrUnsafe(pDb, iNodePtr);
      iNode++;
      pCsr->apTreeNode[iNode] = pNode;




      pTreeKey = (TreeKey*)treeShmptrUnsafe(pDb, pNode->aiKeyPtr[1]);
      if( !(pTreeKey->flags & LSM_CONTIGUOUS) ){
        pTreeKey = treeShmkey(pDb, pNode->aiKeyPtr[1], TKV_LOADKEY, &b, &rc);
        if( rc!=LSM_OK ) break;
      }
      res = treeKeycmp((void *)&pTreeKey[1], pTreeKey->nKey, pKey, nKey);
      if( res==0 ){
        pCsr->aiCell[iNode] = 1;
        break;
      }




      iTest = (res>0 ? 0 : 2);
      iTreeKey = pNode->aiKeyPtr[iTest];
      if( iTreeKey ){
        pTreeKey = (TreeKey*)treeShmptrUnsafe(pDb, iTreeKey);
        if( !(pTreeKey->flags & LSM_CONTIGUOUS) ){
          pTreeKey = treeShmkey(pDb, iTreeKey, TKV_LOADKEY, &b, &rc);
          if( rc ) break;
        }
        res = treeKeycmp((void *)&pTreeKey[1], pTreeKey->nKey, pKey, nKey);
        if( res==0 ){
          pCsr->aiCell[iNode] = (u8)iTest;
          break;
        }
      }else{
        iTest = 1;
      }

      if( (u32)iNode<(pRoot->nHeight-1) ){
        iNodePtr = getChildPtr(pNode, pRoot->iTransId, iTest + (res<0));
      }else{
        iNodePtr = 0;
      }
      pCsr->aiCell[iNode] = (u8)(iTest + (iNodePtr && (res<0)));
    }

    *pRes = res;
    pCsr->iNode = iNode;
    tblobFree(pDb, &b);
  }



  if( rc==LSM_OK && lsmTreeCursorValid(pCsr) ){
    int cmp = treeCsrCompare(pCsr, pKey, nKey, &rc);
    assert( rc!=LSM_OK || *pRes==cmp || (*pRes ^ cmp)>0 );
  }


  return rc;
}
