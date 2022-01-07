
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nValMax; int nValMin; int nDelete; int nWrite; int nIter; int nRange; } ;
typedef TYPE_1__ Datatest3 ;


 char* testMallocPrintf (char*,char const*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static char *getName3(const char *zSystem, Datatest3 *p){
  return testMallocPrintf("data3.%s.%d.%d.%d.%d.(%d..%d)",
      zSystem, p->nRange, p->nIter, p->nWrite, p->nDelete,
      p->nValMin, p->nValMax
  );
}
