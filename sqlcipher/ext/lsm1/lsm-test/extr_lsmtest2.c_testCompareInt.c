
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int testPrintError (char*,int,int) ;
 int test_failed () ;

void testCompareInt(int i1, int i2, int *pRc){
  if( *pRc==0 && i1!=i2 ){
    testPrintError("testCompareInt: %d != %d\n", i1, i2);
    *pRc = 1;
    test_failed();
  }
}
