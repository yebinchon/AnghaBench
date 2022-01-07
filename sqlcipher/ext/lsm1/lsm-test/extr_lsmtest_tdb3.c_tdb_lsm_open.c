
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int testLsmOpen (char const*,char const*,int,int **) ;

int tdb_lsm_open(const char *zCfg, const char *zDb, int bClear, TestDb **ppDb){
  return testLsmOpen(zCfg, zDb, bClear, ppDb);
}
