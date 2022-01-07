
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int Datasource ;


 int tdb_lsm_open (char const*,char const*,int,int **) ;
 int testClose (int **) ;
 int testSaveDb (char const*,char*) ;
 int testWriteDatasourceRange (int *,int *,int ,int,int*) ;

void testSetupSavedLsmdb(
  const char *zCfg,
  const char *zFile,
  Datasource *pData,
  int nRow,
  int *pRc
){
  if( *pRc==0 ){
    int rc;
    TestDb *pDb;
    rc = tdb_lsm_open(zCfg, zFile, 1, &pDb);
    if( rc==0 ){
      testWriteDatasourceRange(pDb, pData, 0, nRow, &rc);
      testClose(&pDb);
      if( rc==0 ) testSaveDb(zFile, "log");
    }
    *pRc = rc;
  }
}
