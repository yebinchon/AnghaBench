
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nVerify; int nRow; int defn; } ;
typedef TYPE_1__ Datatest1 ;


 char* testDatasourceName (int *) ;
 int testFree (char*) ;
 char* testMallocPrintf (char*,char const*,char*,int,int ,int ) ;

__attribute__((used)) static char *getName(const char *zSystem, int bRecover, Datatest1 *pTest){
  char *zRet;
  char *zData;
  zData = testDatasourceName(&pTest->defn);
  zRet = testMallocPrintf("data.%s.%s.rec=%d.%d.%d",
      zSystem, zData, bRecover, pTest->nRow, pTest->nVerify
  );
  testFree(zData);
  return zRet;
}
