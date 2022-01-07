
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_4__ {scalar_t__ eMode; int db; } ;
typedef TYPE_1__ LsmDb ;


 scalar_t__ LSMTEST_MODE_BACKGROUND_BOTH ;
 scalar_t__ LSMTEST_MODE_BACKGROUND_CKPT ;
 scalar_t__ LSMTEST_MODE_BACKGROUND_WORK ;
 int LSM_OK ;
 int lsm_insert (int ,void*,int,void*,int) ;
 int waitOnCheckpointer (TYPE_1__*,int ) ;
 int waitOnWorker (TYPE_1__*) ;

__attribute__((used)) static int test_lsm_write(
  TestDb *pTestDb,
  void *pKey,
  int nKey,
  void *pVal,
  int nVal
){
  LsmDb *pDb = (LsmDb *)pTestDb;
  int rc = LSM_OK;

  if( pDb->eMode==LSMTEST_MODE_BACKGROUND_CKPT ){
    rc = waitOnCheckpointer(pDb, pDb->db);
  }else if(
      pDb->eMode==LSMTEST_MODE_BACKGROUND_WORK
   || pDb->eMode==LSMTEST_MODE_BACKGROUND_BOTH
  ){
    rc = waitOnWorker(pDb);
  }

  if( rc==LSM_OK ){
    rc = lsm_insert(pDb->db, pKey, nKey, pVal, nVal);
  }
  return rc;
}
