
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_3__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
typedef TYPE_1__ DatasourceDefn ;
typedef int Datasource ;


 int TEST_DATASOURCE_RANDOM ;
 int do_test_api1_lsm (int ,int*) ;
 int tdb_lsm (int *) ;
 scalar_t__ testCaseBegin (int*,char const*,char*) ;
 int testCaseFinish (int) ;
 int testClose (int **) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (TYPE_1__ const*) ;
 int * testOpen (char*,int,int*) ;
 int testWriteDatasourceRange (int *,int *,int ,int,int*) ;

__attribute__((used)) static void do_test_api1(const char *zPattern, int *pRc){
  if( testCaseBegin(pRc, zPattern, "api1.lsm") ){
    const DatasourceDefn defn = { TEST_DATASOURCE_RANDOM, 10, 15, 200, 250 };
    Datasource *pData;
    TestDb *pDb;
    int rc = 0;

    pDb = testOpen("lsm_lomem", 1, &rc);
    pData = testDatasourceNew(&defn);
    testWriteDatasourceRange(pDb, pData, 0, 1000, pRc);

    do_test_api1_lsm(tdb_lsm(pDb), pRc);

    testDatasourceFree(pData);
    testClose(&pDb);

    testCaseFinish(*pRc);
  }
}
