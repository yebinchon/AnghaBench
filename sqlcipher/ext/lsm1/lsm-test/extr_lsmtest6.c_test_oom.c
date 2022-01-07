
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_test_oom1 (char const*,int*) ;

void test_oom(
  const char *zPattern,
  int *pRc
){
  do_test_oom1(zPattern, pRc);
}
