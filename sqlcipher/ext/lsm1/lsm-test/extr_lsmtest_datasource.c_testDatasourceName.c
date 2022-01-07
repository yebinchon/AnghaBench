
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ eType; int nMaxVal; int nMinVal; int nMaxKey; int nMinKey; } ;
typedef TYPE_1__ DatasourceDefn ;


 scalar_t__ TEST_DATASOURCE_SEQUENCE ;
 char* testMallocPrintf (char*,char*,int ,int ,int ,int ) ;

char *testDatasourceName(const DatasourceDefn *p){
  char *zRet;
  zRet = testMallocPrintf("%s.(%d-%d).(%d-%d)",
      (p->eType==TEST_DATASOURCE_SEQUENCE ? "seq" : "rnd"),
      p->nMinKey, p->nMaxKey,
      p->nMinVal, p->nMaxVal
  );
  return zRet;
}
