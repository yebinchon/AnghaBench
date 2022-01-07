
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_12__ {int nHeight; scalar_t__ iTransId; } ;
struct TYPE_13__ {TYPE_1__ root; } ;
struct TYPE_14__ {TYPE_2__ treehdr; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_15__ {scalar_t__ iV2; scalar_t__ iV2Ptr; scalar_t__ iV2Child; } ;
typedef TYPE_4__ TreeNode ;
struct TYPE_16__ {size_t iNode; int blob; int pDb; TYPE_4__** apTreeNode; } ;
typedef TYPE_5__ TreeCursor ;


 int LSM_OK ;
 int lsmTreeCursorEnd (TYPE_5__*,int ) ;
 int lsmTreeCursorNext (TYPE_5__*) ;
 scalar_t__ lsmTreeCursorValid (TYPE_5__*) ;
 int tblobFree (int ,int *) ;
 int treeCursorInit (TYPE_3__*,int ,TYPE_5__*) ;

__attribute__((used)) static int treeRepairPtrs(lsm_db *db){
  int rc = LSM_OK;

  if( db->treehdr.root.nHeight>1 ){
    TreeCursor csr;
    u32 iTransId = db->treehdr.root.iTransId;




    db->treehdr.root.nHeight--;
    treeCursorInit(db, 0, &csr);

    rc = lsmTreeCursorEnd(&csr, 0);
    while( rc==LSM_OK && lsmTreeCursorValid(&csr) ){
      TreeNode *pNode = csr.apTreeNode[csr.iNode];
      if( pNode->iV2>iTransId ){
        pNode->iV2Child = 0;
        pNode->iV2Ptr = 0;
        pNode->iV2 = 0;
      }
      rc = lsmTreeCursorNext(&csr);
    }
    tblobFree(csr.pDb, &csr.blob);

    db->treehdr.root.nHeight++;
  }

  return rc;
}
