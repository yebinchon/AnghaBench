
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u32 ;
struct TYPE_12__ {scalar_t__ iTransId; void* iRoot; } ;
struct TYPE_13__ {TYPE_1__ root; } ;
struct TYPE_14__ {TYPE_2__ treehdr; int rollback; int pEnv; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_15__ {scalar_t__ iV2; void* iV2Ptr; scalar_t__ iV2Child; void** aiChildPtr; } ;
typedef TYPE_4__ TreeNode ;
struct TYPE_16__ {size_t iNode; int* aiCell; TYPE_4__** apTreeNode; } ;
typedef TYPE_5__ TreeCursor ;


 int LSM_OK ;
 int assert (int) ;
 TYPE_4__* copyTreeNode (TYPE_3__*,TYPE_4__*,void**,int*) ;
 void* getChildPtr (TYPE_4__*,scalar_t__,int) ;
 int intArrayAppend (int ,int *,void*) ;

__attribute__((used)) static int treeUpdatePtr(lsm_db *pDb, TreeCursor *pCsr, u32 iNew){
  int rc = LSM_OK;
  if( pCsr->iNode<0 ){

    pDb->treehdr.root.iRoot = iNew;
  }else{




    TreeNode *p;
    int iChildPtr;

    p = pCsr->apTreeNode[pCsr->iNode];
    iChildPtr = pCsr->aiCell[pCsr->iNode];

    if( p->iV2 ){

      u32 iCopy;
      TreeNode *pCopy;
      pCopy = copyTreeNode(pDb, p, &iCopy, &rc);
      if( pCopy ){
        assert( rc==LSM_OK );
        pCopy->aiChildPtr[iChildPtr] = iNew;
        pCsr->iNode--;
        rc = treeUpdatePtr(pDb, pCsr, iCopy);
      }
    }else{

      u32 iPtr;
      assert( pDb->treehdr.root.iTransId>0 );

      if( pCsr->iNode ){
        iPtr = getChildPtr(
            pCsr->apTreeNode[pCsr->iNode-1],
            pDb->treehdr.root.iTransId, pCsr->aiCell[pCsr->iNode-1]
        );
      }else{
        iPtr = pDb->treehdr.root.iRoot;
      }
      rc = intArrayAppend(pDb->pEnv, &pDb->rollback, iPtr);

      if( rc==LSM_OK ){
        p->iV2 = pDb->treehdr.root.iTransId;
        p->iV2Child = (u8)iChildPtr;
        p->iV2Ptr = iNew;
      }
    }
  }

  return rc;
}
