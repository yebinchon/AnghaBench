
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nIter; int nWrite; int nRange; int defn; } ;
typedef TYPE_1__ Datatest2 ;


 char* testDatasourceName (int *) ;
 int testFree (char*) ;
 char* testMallocPrintf (char*,char const*,char*,int,int ,int ,int ) ;

__attribute__((used)) static char *getName2(const char *zSystem, int bRecover, Datatest2 *pTest){
  char *zRet;
  char *zData;
  zData = testDatasourceName(&pTest->defn);
  zRet = testMallocPrintf("data2.%s.%s.rec=%d.%d.%d.%d",
      zSystem, zData, bRecover, pTest->nRange, pTest->nWrite, pTest->nIter
  );
  testFree(zData);
  return zRet;
}
