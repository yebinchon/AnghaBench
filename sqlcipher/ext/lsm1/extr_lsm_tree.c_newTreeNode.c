
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lsm_db ;
typedef int TreeNode ;


 int * treeShmallocZero (int *,int,int *,int*) ;

__attribute__((used)) static TreeNode *newTreeNode(lsm_db *pDb, u32 *piPtr, int *pRc){
  return treeShmallocZero(pDb, sizeof(TreeNode), piPtr, pRc);
}
