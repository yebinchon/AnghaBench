
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,int,int) ;
 int stderr ;
 int test_failed () ;

__attribute__((used)) static void testSetErrorFunc(int rc, int *pRc, const char *zFile, int iLine){
  if( rc ){
    *pRc = rc;
    fprintf(stderr, "FAILED (%s:%d) rc=%d ", zFile, iLine, rc);
    test_failed();
  }
}
