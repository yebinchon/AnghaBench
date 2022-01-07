
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lsm_db ;
typedef int TestDb ;
struct TYPE_3__ {int nDel; int iDelStart; int nIns; int iInsStart; } ;
typedef TYPE_1__ SetupStep ;
typedef int Datasource ;


 int LSM_CONFIG_AUTOFLUSH ;
 int lsm_begin (int *,int) ;
 int lsm_checkpoint (int *,int ) ;
 int lsm_commit (int *,int ) ;
 int lsm_config (int *,int ,int*) ;
 int lsm_work (int *,int ,int ,int ) ;
 int * tdb_lsm (int *) ;
 int testDeleteDatasourceRange (int *,int *,int ,int ,int*) ;
 int testWriteDatasourceRange (int *,int *,int ,int ,int*) ;

__attribute__((used)) static void doSetupStep(
  TestDb *pDb,
  Datasource *pData,
  const SetupStep *pStep,
  int *pRc
){
  testWriteDatasourceRange(pDb, pData, pStep->iInsStart, pStep->nIns, pRc);
  testDeleteDatasourceRange(pDb, pData, pStep->iDelStart, pStep->nDel, pRc);
  if( *pRc==0 ){
    int nSave = -1;
    int nBuf = 64;
    lsm_db *db = tdb_lsm(pDb);

    lsm_config(db, LSM_CONFIG_AUTOFLUSH, &nSave);
    lsm_config(db, LSM_CONFIG_AUTOFLUSH, &nBuf);
    lsm_begin(db, 1);
    lsm_commit(db, 0);
    lsm_config(db, LSM_CONFIG_AUTOFLUSH, &nSave);

    *pRc = lsm_work(db, 0, 0, 0);
    if( *pRc==0 ){
      *pRc = lsm_checkpoint(db, 0);
    }
  }
}
