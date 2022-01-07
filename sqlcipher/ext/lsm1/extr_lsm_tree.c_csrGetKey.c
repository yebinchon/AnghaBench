
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int lsm_db ;
struct TYPE_8__ {int flags; } ;
typedef TYPE_2__ TreeKey ;
struct TYPE_9__ {size_t iNode; size_t* aiCell; TYPE_1__** apTreeNode; int * pDb; } ;
typedef TYPE_3__ TreeCursor ;
typedef int TreeBlob ;
struct TYPE_7__ {int * aiKeyPtr; } ;


 int LSM_CONTIGUOUS ;
 int TKV_LOADVAL ;
 int assert (int ) ;
 TYPE_2__* treeShmkey (int *,int ,int ,int *,int*) ;
 scalar_t__ treeShmptrUnsafe (int *,int ) ;

__attribute__((used)) static TreeKey *csrGetKey(TreeCursor *pCsr, TreeBlob *pBlob, int *pRc){
  TreeKey *pRet;
  lsm_db *pDb = pCsr->pDb;
  u32 iPtr = pCsr->apTreeNode[pCsr->iNode]->aiKeyPtr[pCsr->aiCell[pCsr->iNode]];

  assert( iPtr );
  pRet = (TreeKey*)treeShmptrUnsafe(pDb, iPtr);
  if( !(pRet->flags & LSM_CONTIGUOUS) ){
    pRet = treeShmkey(pDb, iPtr, TKV_LOADVAL, pBlob, pRc);
  }

  return pRet;
}
