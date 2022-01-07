
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 int testPrintError (char*,char const*,char const*) ;
 int test_failed () ;

void testCompareStr(const char *z1, const char *z2, int *pRc){
  if( *pRc==0 ){
    if( strcmp(z1, z2) ){
      testPrintError("testCompareStr: \"%s\" != \"%s\"\n", z1, z2);
      *pRc = 1;
      test_failed();
    }
  }
}
