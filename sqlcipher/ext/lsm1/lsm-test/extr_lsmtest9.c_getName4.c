
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bReopen; int nRepeat; int nRec; int defn; } ;
typedef TYPE_1__ Datatest4 ;


 char* testDatasourceName (int *) ;
 int testFree (char*) ;
 char* testMallocPrintf (char*,char const*,char*,int ,int ,int ) ;

__attribute__((used)) static char *getName4(const char *zSystem, Datatest4 *pTest){
  char *zRet;
  char *zData;
  zData = testDatasourceName(&pTest->defn);
  zRet = testMallocPrintf("data4.%s.%s.%d.%d.%d",
      zSystem, zData, pTest->nRec, pTest->nRepeat, pTest->bReopen
  );
  testFree(zData);
  return zRet;
}
