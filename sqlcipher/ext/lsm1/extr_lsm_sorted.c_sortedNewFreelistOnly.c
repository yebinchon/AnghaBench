
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int TREE_NONE ;
 int sortedNewToplevel (int *,int ,int ) ;

__attribute__((used)) static int sortedNewFreelistOnly(lsm_db *pDb){
  return sortedNewToplevel(pDb, TREE_NONE, 0);
}
