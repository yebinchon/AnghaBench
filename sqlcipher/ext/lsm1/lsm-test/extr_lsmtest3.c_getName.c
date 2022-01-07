
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* testMallocPrintf (char*,char const*) ;

__attribute__((used)) static char *getName(const char *zSystem){
  char *zRet;
  zRet = testMallocPrintf("rollback.%s", zSystem);
  return zRet;
}
