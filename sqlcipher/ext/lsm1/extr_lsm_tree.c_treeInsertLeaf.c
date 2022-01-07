
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* u32 ;
typedef int lsm_db ;
struct TYPE_8__ {int* aiKeyPtr; } ;
typedef TYPE_1__ TreeNode ;
struct TYPE_9__ {int* aiKeyPtr; } ;
typedef TYPE_2__ TreeLeaf ;
struct TYPE_10__ {size_t iNode; int * aiCell; TYPE_1__** apTreeNode; } ;
typedef TYPE_3__ TreeCursor ;


 int LSM_OK ;
 int assert (int) ;
 TYPE_2__* newTreeLeaf (int *,void**,int*) ;
 int treeInsert (int *,TYPE_3__*,void*,int,void*,int ) ;
 int treeUpdatePtr (int *,TYPE_3__*,void*) ;

__attribute__((used)) static int treeInsertLeaf(
  lsm_db *pDb,
  TreeCursor *pCsr,
  u32 iTreeKey,
  int iSlot
){
  int rc = LSM_OK;
  TreeNode *pLeaf = pCsr->apTreeNode[pCsr->iNode];
  TreeLeaf *pNew;
  u32 iNew;

  assert( iSlot>=0 && iSlot<=4 );
  assert( pCsr->iNode>0 );
  assert( pLeaf->aiKeyPtr[1] );

  pCsr->iNode--;

  pNew = newTreeLeaf(pDb, &iNew, &rc);
  if( pNew ){
    if( pLeaf->aiKeyPtr[0] && pLeaf->aiKeyPtr[2] ){

      TreeLeaf *pRight;
      u32 iRight;
      pRight = newTreeLeaf(pDb, &iRight, &rc);
      if( pRight ){
        assert( rc==LSM_OK );
        pNew->aiKeyPtr[1] = pLeaf->aiKeyPtr[0];
        pRight->aiKeyPtr[1] = pLeaf->aiKeyPtr[2];
        switch( iSlot ){
          case 0: pNew->aiKeyPtr[0] = iTreeKey; break;
          case 1: pNew->aiKeyPtr[2] = iTreeKey; break;
          case 2: pRight->aiKeyPtr[0] = iTreeKey; break;
          case 3: pRight->aiKeyPtr[2] = iTreeKey; break;
        }

        rc = treeInsert(pDb, pCsr, iNew, pLeaf->aiKeyPtr[1], iRight,
            pCsr->aiCell[pCsr->iNode]
        );
      }
    }else{
      int iOut = 0;
      int i;
      for(i=0; i<4; i++){
        if( i==iSlot ) pNew->aiKeyPtr[iOut++] = iTreeKey;
        if( i<3 && pLeaf->aiKeyPtr[i] ){
          pNew->aiKeyPtr[iOut++] = pLeaf->aiKeyPtr[i];
        }
      }
      rc = treeUpdatePtr(pDb, pCsr, iNew);
    }
  }

  return rc;
}
