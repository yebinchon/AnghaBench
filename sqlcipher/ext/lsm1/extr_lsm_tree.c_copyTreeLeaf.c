
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lsm_db ;
typedef int TreeNode ;
typedef int TreeLeaf ;


 int memcpy (int *,int *,int) ;
 int * newTreeLeaf (int *,int *,int*) ;

__attribute__((used)) static TreeNode *copyTreeLeaf(
  lsm_db *pDb,
  TreeLeaf *pOld,
  u32 *piNew,
  int *pRc
){
  TreeLeaf *pNew;
  pNew = newTreeLeaf(pDb, piNew, pRc);
  if( pNew ){
    memcpy(pNew, pOld, sizeof(TreeLeaf));
  }
  return (TreeNode *)pNew;
}
