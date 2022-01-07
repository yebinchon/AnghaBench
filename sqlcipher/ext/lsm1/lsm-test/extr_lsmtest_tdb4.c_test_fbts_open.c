
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int test_bt_open (char*,char const*,int,int **) ;

int test_fbts_open(
  const char *zSpec,
  const char *zFilename,
  int bClear,
  TestDb **ppDb
){
  return test_bt_open("fast=1 blksz=32K pagesz=512", zFilename, bClear, ppDb);
}
