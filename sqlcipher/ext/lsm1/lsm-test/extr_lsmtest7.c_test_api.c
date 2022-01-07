
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_test_api1 (char const*,int*) ;
 int do_test_api2 (char const*,int*) ;

void test_api(
  const char *zPattern,
  int *pRc
){
  do_test_api1(zPattern, pRc);
  do_test_api2(zPattern, pRc);
}
