
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;
typedef int SetupStep ;
typedef int Datasource ;


 int assert (int) ;
 int doSetupStep (int *,int *,int const*,int*) ;

__attribute__((used)) static void doSetupStepArray(
  TestDb *pDb,
  Datasource *pData,
  const SetupStep *aStep,
  int nStep
){
  int i;
  for(i=0; i<nStep; i++){
    int rc = 0;
    doSetupStep(pDb, pData, &aStep[i], &rc);
    assert( rc==0 );
  }
}
