
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_7__ {int member_1; int member_2; int member_3; int member_4; int member_0; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_4; int member_3; } ;
typedef TYPE_1__ SetupStep ;
typedef TYPE_2__ DatasourceDefn ;
typedef int Datasource ;


 int ArraySize (TYPE_1__ const*) ;
 int TEST_DATASOURCE_RANDOM ;
 int doSetupStepArray (int *,int *,TYPE_1__ const*,int ) ;
 int testDatasourceFree (int *) ;
 int * testDatasourceNew (TYPE_2__ const*) ;

__attribute__((used)) static void setupDatabase1(TestDb *pDb, Datasource **ppData){
  const SetupStep aStep[] = {
    { 0, 1, 2000, 0, 0 },
    { 1, 0, 0, 0, 0 },
    { 0, 10001, 1000, 0, 0 },
  };
  const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 12, 16, 100, 500};
  Datasource *pData;

  pData = testDatasourceNew(&defn);
  doSetupStepArray(pDb, pData, aStep, ArraySize(aStep));
  if( ppData ){
    *ppData = pData;
  }else{
    testDatasourceFree(pData);
  }
}
