
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {scalar_t__ pCsr; int db; } ;
typedef TYPE_1__ LsmDb ;


 int LSM_OK ;
 int lsm_begin (int ,int) ;
 int lsm_csr_open (int ,scalar_t__*) ;

__attribute__((used)) static int test_lsm_begin(TestDb *pTestDb, int iLevel){
  int rc = LSM_OK;
  LsmDb *pDb = (LsmDb *)pTestDb;


  if( iLevel==0 ) return 0;

  if( pDb->pCsr==0 ) rc = lsm_csr_open(pDb->db, &pDb->pCsr);
  if( rc==LSM_OK && iLevel>1 ){
    rc = lsm_begin(pDb->db, iLevel-1);
  }

  return rc;
}
