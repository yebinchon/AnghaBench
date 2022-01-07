
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int lsm_db ;
struct TYPE_5__ {size_t iV2Child; int iV2Ptr; int * aiChildPtr; scalar_t__ iV2; int * aiKeyPtr; } ;
typedef TYPE_1__ TreeNode ;


 int memcpy (int *,int *,int) ;
 TYPE_1__* newTreeNode (int *,int *,int*) ;

__attribute__((used)) static TreeNode *copyTreeNode(
  lsm_db *pDb,
  TreeNode *pOld,
  u32 *piNew,
  int *pRc
){
  TreeNode *pNew;

  pNew = newTreeNode(pDb, piNew, pRc);
  if( pNew ){
    memcpy(pNew->aiKeyPtr, pOld->aiKeyPtr, sizeof(pNew->aiKeyPtr));
    memcpy(pNew->aiChildPtr, pOld->aiChildPtr, sizeof(pNew->aiChildPtr));
    if( pOld->iV2 ) pNew->aiChildPtr[pOld->iV2Child] = pOld->iV2Ptr;
  }
  return pNew;
}
