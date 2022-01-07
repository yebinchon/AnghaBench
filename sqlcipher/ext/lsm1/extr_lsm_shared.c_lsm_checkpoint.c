
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int pFS; } ;
typedef TYPE_1__ lsm_db ;
typedef int i64 ;


 int LSM_OK ;
 int lsmCheckpointWrite (TYPE_1__*,scalar_t__*) ;
 int lsmFsPageSize (int ) ;

int lsm_checkpoint(lsm_db *pDb, int *pnKB){
  int rc;
  u32 nWrite = 0;



  rc = lsmCheckpointWrite(pDb, &nWrite);



  if( pnKB ){
    int nKB = 0;
    if( rc==LSM_OK && nWrite ){
      nKB = (((i64)nWrite * lsmFsPageSize(pDb->pFS)) + 1023) / 1024;
    }
    *pnKB = nKB;
  }

  return rc;
}
