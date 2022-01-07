
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int tdb_delete (int *,void*,int) ;
 int testSetError (int) ;

void testDelete(
  TestDb *pDb,
  void *pKey, int nKey,
  int *pRc
){
  if( *pRc==0 ){
    int rc;
    *pRc = rc = tdb_delete(pDb, pKey, nKey);
    testSetError(rc);
  }
}
