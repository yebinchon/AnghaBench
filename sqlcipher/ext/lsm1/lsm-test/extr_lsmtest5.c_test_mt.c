
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_test_mt1 (char const*,char const*,int*) ;
 scalar_t__ testThreadSupport () ;

void test_mt(
  const char *zSystem,
  const char *zPattern,
  int *pRc
){
  if( testThreadSupport()==0 ) return;
  do_test_mt1(zSystem, zPattern, pRc);
}
