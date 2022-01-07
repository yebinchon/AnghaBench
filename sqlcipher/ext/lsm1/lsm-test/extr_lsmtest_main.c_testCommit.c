
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int tdb_commit (int *,int) ;
 int testSetError (int) ;

void testCommit(TestDb *pDb, int iTrans, int *pRc){
  if( *pRc==0 ){
    int rc;
    rc = tdb_commit(pDb, iTrans);
    testSetError(rc);
  }
}
