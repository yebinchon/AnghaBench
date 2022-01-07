
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int tdb_open (char const*,int ,int,int **) ;
 int testSetError (int) ;

TestDb *testOpen(const char *zSystem, int bClear, int *pRc){
  TestDb *pDb = 0;
  if( *pRc==0 ){
    int rc;
    rc = tdb_open(zSystem, 0, bClear, &pDb);
    if( rc!=0 ){
      testSetError(rc);
      *pRc = rc;
    }
  }
  return pDb;
}
