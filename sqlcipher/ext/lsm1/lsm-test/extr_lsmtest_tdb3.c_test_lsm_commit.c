
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int db; scalar_t__ pCsr; } ;
typedef TYPE_1__ LsmDb ;


 int MAX (int ,int) ;
 int lsm_commit (int ,int ) ;
 int lsm_csr_close (scalar_t__) ;

__attribute__((used)) static int test_lsm_commit(TestDb *pTestDb, int iLevel){
  LsmDb *pDb = (LsmDb *)pTestDb;


  if( iLevel==0 && pDb->pCsr ){
    lsm_csr_close(pDb->pCsr);
    pDb->pCsr = 0;
  }


  return lsm_commit(pDb->db, MAX(0, iLevel-1));
}
