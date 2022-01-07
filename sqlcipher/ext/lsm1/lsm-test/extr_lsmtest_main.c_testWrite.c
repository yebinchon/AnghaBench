
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int tdb_write (int *,void*,int,void*,int) ;
 int testSetError (int) ;

void testWrite(
  TestDb *pDb,
  void *pKey, int nKey,
  void *pVal, int nVal,
  int *pRc
){
  if( *pRc==0 ){
    int rc;
static int nCall = 0;
nCall++;
    rc = tdb_write(pDb, pKey, nKey, pVal, nVal);
    testSetError(rc);
  }
}
