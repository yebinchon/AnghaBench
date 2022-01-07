
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* xCmp ) (void*,int,void*,int) ;} ;
typedef TYPE_1__ lsm_db ;


 int LSM_OK ;
 int doWriteOp (TYPE_1__*,int,void const*,int,void const*,int) ;
 scalar_t__ stub1 (void*,int,void*,int) ;

int lsm_delete_range(
  lsm_db *db,
  const void *pKey1, int nKey1,
  const void *pKey2, int nKey2
){
  int rc = LSM_OK;
  if( db->xCmp((void *)pKey1, nKey1, (void *)pKey2, nKey2)<0 ){
    rc = doWriteOp(db, 1, pKey1, nKey1, pKey2, nKey2);
  }
  return rc;
}
