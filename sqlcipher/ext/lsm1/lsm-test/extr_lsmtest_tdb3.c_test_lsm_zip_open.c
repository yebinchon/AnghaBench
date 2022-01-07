
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int testLsmOpen (char const*,char const*,int,int **) ;

int test_lsm_zip_open(
  const char *zSpec,
  const char *zFilename,
  int bClear,
  TestDb **ppDb
){
  const char *zCfg =
    "page_size=256 block_size=64 autoflush=16 "
    "autocheckpoint=32 compression=1 mmap=0 "
  ;
  return testLsmOpen(zCfg, zFilename, bClear, ppDb);
}
