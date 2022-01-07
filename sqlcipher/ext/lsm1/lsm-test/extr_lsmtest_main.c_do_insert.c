
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hook ;
typedef int TestDb ;
struct TYPE_7__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
struct TYPE_6__ {int pOut; } ;
typedef TYPE_1__ InsertWriteHook ;
typedef TYPE_2__ DatasourceDefn ;
typedef int Datasource ;


 int TEST_DATASOURCE_RANDOM ;
 int do_insert_work_hook ;
 int do_insert_write_hook ;
 int fclose (int ) ;
 int flushHook (TYPE_1__*) ;
 int fopen (char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int tdb_close (int *) ;
 int tdb_lsm_config_work_hook (int *,int ,int ) ;
 int tdb_lsm_env () ;
 int tdb_lsm_open (char const*,char*,int,int **) ;
 int tdb_lsm_write_hook (int *,int ,void*) ;
 int tdb_open (char const*,int ,int,int **) ;
 int tdb_write (int *,void*,int,void*,int) ;
 int testDatasourceEntry (int *,int,void**,int*,void**,int*) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (TYPE_2__*) ;
 int testMallocInstall (int ) ;
 int testMallocUninstall (int ) ;
 int testPrintError (char*,...) ;

__attribute__((used)) static int do_insert(int nArg, char **azArg){
  const char *zDb = "lsm";
  TestDb *pDb = 0;
  int i;
  int rc;
  const int nRow = 1 * 1000 * 1000;

  DatasourceDefn defn = { TEST_DATASOURCE_RANDOM, 8, 15, 80, 150 };
  Datasource *pData = 0;

  if( nArg>1 ){
    testPrintError("Usage: insert ?DATABASE?\n");
    return 1;
  }
  if( nArg==1 ){ zDb = azArg[0]; }

  testMallocUninstall(tdb_lsm_env());
  for(i=0; zDb[i] && zDb[i]!='='; i++);
  if( zDb[i] ){
    rc = tdb_lsm_open(zDb, "testdb.lsm", 1, &pDb);
  }else{
    rc = tdb_open(zDb, 0, 1, &pDb);
  }

  if( rc!=0 ){
    testPrintError("Error opening db \"%s\": %d\n", zDb, rc);
  }else{
    InsertWriteHook hook;
    memset(&hook, 0, sizeof(hook));
    hook.pOut = fopen("writelog.txt", "w");

    pData = testDatasourceNew(&defn);
    tdb_lsm_config_work_hook(pDb, do_insert_work_hook, 0);
    tdb_lsm_write_hook(pDb, do_insert_write_hook, (void *)&hook);

    if( rc==0 ){
      for(i=0; i<nRow; i++){
        void *pKey; int nKey;
        void *pVal; int nVal;
        testDatasourceEntry(pData, i, &pKey, &nKey, &pVal, &nVal);
        tdb_write(pDb, pKey, nKey, pVal, nVal);
      }
    }

    testDatasourceFree(pData);
    tdb_close(pDb);
    flushHook(&hook);
    fclose(hook.pOut);
  }
  testMallocInstall(tdb_lsm_env());

  return rc;
}
