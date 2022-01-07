
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int doWriteOp (int *,int ,void const*,int,int ,int) ;

int lsm_delete(lsm_db *db, const void *pKey, int nKey){
  return doWriteOp(db, 0, pKey, nKey, 0, -1);
}
