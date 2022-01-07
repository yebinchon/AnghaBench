
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ TreeKey ;
struct TYPE_7__ {size_t iNode; size_t* aiCell; TYPE_1__** apTreeNode; int pDb; } ;
typedef TYPE_3__ TreeCursor ;
struct TYPE_5__ {int * aiKeyPtr; } ;


 int LSM_CONTIGUOUS ;
 int LSM_OK ;
 int assert (int) ;
 scalar_t__ treeShmptrUnsafe (int ,int ) ;

int lsmTreeCursorFlags(TreeCursor *pCsr){
  int flags = 0;
  if( pCsr && pCsr->iNode>=0 ){
    int rc = LSM_OK;
    TreeKey *pKey = (TreeKey *)treeShmptrUnsafe(pCsr->pDb,
        pCsr->apTreeNode[pCsr->iNode]->aiKeyPtr[pCsr->aiCell[pCsr->iNode]]
    );
    assert( rc==LSM_OK );
    flags = (pKey->flags & ~LSM_CONTIGUOUS);
  }
  return flags;
}
