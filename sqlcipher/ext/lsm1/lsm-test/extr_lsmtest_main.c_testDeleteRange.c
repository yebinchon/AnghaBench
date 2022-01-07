
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int tdb_delete_range (int *,void*,int,void*,int) ;
 int testSetError (int) ;

void testDeleteRange(
  TestDb *pDb,
  void *pKey1, int nKey1,
  void *pKey2, int nKey2,
  int *pRc
){
  if( *pRc==0 ){
    int rc;
    *pRc = rc = tdb_delete_range(pDb, pKey1, nKey1, pKey2, nKey2);
    testSetError(rc);
  }
}
