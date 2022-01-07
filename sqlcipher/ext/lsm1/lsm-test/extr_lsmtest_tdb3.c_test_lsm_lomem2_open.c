
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int testLsmOpen (char const*,char const*,int,int **) ;

int test_lsm_lomem2_open(
  const char *zSpec,
  const char *zFilename,
  int bClear,
  TestDb **ppDb
){

  const char *zCfg =
    "page_size=512 block_size=64 autoflush=0 mmap=0 "
  ;
  return testLsmOpen(zCfg, zFilename, bClear, ppDb);
}
