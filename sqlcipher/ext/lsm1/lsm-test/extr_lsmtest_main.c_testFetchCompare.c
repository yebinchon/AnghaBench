
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 scalar_t__ memcmp (void*,void*,int) ;
 int tdb_fetch (int *,void*,int,void**,int*) ;
 int testSetError (int) ;

void testFetchCompare(
  TestDb *pControl,
  TestDb *pDb,
  void *pKey, int nKey,
  int *pRc
){
  int rc;
  void *pDbVal1;
  void *pDbVal2;
  int nDbVal1;
  int nDbVal2;

  static int nCall = 0;
  nCall++;

  rc = tdb_fetch(pControl, pKey, nKey, &pDbVal1, &nDbVal1);
  testSetError(rc);

  rc = tdb_fetch(pDb, pKey, nKey, &pDbVal2, &nDbVal2);
  testSetError(rc);

  if( *pRc==0
   && (nDbVal1!=nDbVal2 || (nDbVal1>0 && memcmp(pDbVal1, pDbVal2, nDbVal1)))
  ){
    testSetError(1);
  }
}
