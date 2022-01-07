
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int doWriteOp (int *,int ,void const*,int,void const*,int) ;

int lsm_insert(
  lsm_db *db,
  const void *pKey, int nKey,
  const void *pVal, int nVal
){
  return doWriteOp(db, 0, pKey, nKey, pVal, nVal);
}
