
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int lsm_db ;
typedef int TreeNode ;


 int WORKING_VERSION ;
 int assert (int) ;
 int getChildPtr (int *,int ,int) ;
 int * treeShmptr (int *,int ) ;

__attribute__((used)) static void assertIsWorkingChild(
  lsm_db *db,
  TreeNode *pNode,
  TreeNode *pParent,
  int iCell
){
  TreeNode *p;
  u32 iPtr = getChildPtr(pParent, WORKING_VERSION, iCell);
  p = treeShmptr(db, iPtr);
  assert( p==pNode );
}
