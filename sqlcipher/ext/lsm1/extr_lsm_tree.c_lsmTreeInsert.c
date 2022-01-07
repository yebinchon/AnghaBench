
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int LSM_INSERT ;
 int LSM_POINT_DELETE ;
 int treeInsertEntry (int *,int,void*,int,void*,int) ;

int lsmTreeInsert(
  lsm_db *pDb,
  void *pKey,
  int nKey,
  void *pVal,
  int nVal
){
  int flags;
  if( nVal<0 ){
    flags = LSM_POINT_DELETE;
  }else{
    flags = LSM_INSERT;
  }

  return treeInsertEntry(pDb, flags, pKey, nKey, pVal, nVal);
}
