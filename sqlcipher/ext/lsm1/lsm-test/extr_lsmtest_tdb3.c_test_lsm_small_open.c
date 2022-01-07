
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int testLsmOpen (char const*,char const*,int,int **) ;

int test_lsm_small_open(
  const char *zSpec,
  const char *zFile,
  int bClear,
  TestDb **ppDb
){
  const char *zCfg = "page_size=256 block_size=64 mmap=1024";
  return testLsmOpen(zCfg, zFile, bClear, ppDb);
}
