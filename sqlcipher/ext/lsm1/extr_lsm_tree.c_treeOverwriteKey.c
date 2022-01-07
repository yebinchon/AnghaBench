
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_17__ {int nHeight; } ;
struct TYPE_15__ {TYPE_3__ root; } ;
struct TYPE_16__ {TYPE_1__ treehdr; } ;
typedef TYPE_2__ lsm_db ;
typedef TYPE_3__ TreeRoot ;
struct TYPE_18__ {int* aiKeyPtr; } ;
typedef TYPE_4__ TreeNode ;
typedef int TreeLeaf ;
struct TYPE_19__ {size_t iNode; int* aiCell; TYPE_4__** apTreeNode; } ;
typedef TYPE_5__ TreeCursor ;


 int LSM_OK ;
 TYPE_4__* copyTreeLeaf (TYPE_2__*,int *,int*,int*) ;
 TYPE_4__* copyTreeNode (TYPE_2__*,TYPE_4__*,int*,int*) ;
 int treeUpdatePtr (TYPE_2__*,TYPE_5__*,int) ;

__attribute__((used)) static void treeOverwriteKey(lsm_db *db, TreeCursor *pCsr, u32 iKey, int *pRc){
  if( *pRc==LSM_OK ){
    TreeRoot *p = &db->treehdr.root;
    TreeNode *pNew;
    u32 iNew;
    TreeNode *pNode = pCsr->apTreeNode[pCsr->iNode];
    int iCell = pCsr->aiCell[pCsr->iNode];


    if( (pCsr->iNode>0 && (u32)pCsr->iNode==(p->nHeight-1)) ){
      pNew = copyTreeLeaf(db, (TreeLeaf *)pNode, &iNew, pRc);
    }else{
      pNew = copyTreeNode(db, pNode, &iNew, pRc);
    }

    if( pNew ){

      pNew->aiKeyPtr[iCell] = iKey;



      pCsr->iNode--;
      treeUpdatePtr(db, pCsr, iNew);
    }
  }
}
