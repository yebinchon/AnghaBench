
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 scalar_t__ lsm_memcmp (void*,void*,int) ;
 int tdb_fetch (int *,void*,int,void**,int*) ;
 int testSetError (int) ;

void testFetch(
  TestDb *pDb,
  void *pKey, int nKey,
  void *pVal, int nVal,
  int *pRc
){
  if( *pRc==0 ){
    void *pDbVal;
    int nDbVal;
    int rc;

    static int nCall = 0; nCall++;

    rc = tdb_fetch(pDb, pKey, nKey, &pDbVal, &nDbVal);
    testSetError(rc);
    if( rc==0 && (nVal!=nDbVal || (nVal>0 && lsm_memcmp(pVal, pDbVal, nVal))) ){
      testSetError(1);
    }
  }
}
