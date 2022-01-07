
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int lsm_close (int *) ;
 int * newLsmConnection (char*,int,int,int*) ;
 scalar_t__ testCaseBegin (int*,char const*,char*) ;
 int testCaseFinish (int) ;
 int testDeleteLsmdb (char*) ;
 int testPagesize (int *,int,int,int*) ;

__attribute__((used)) static void do_test_api2(const char *zPattern, int *pRc){
  if( *pRc==0 && testCaseBegin(pRc, zPattern, "api2.lsm") ){
    lsm_db *db1 = 0;
    lsm_db *db2 = 0;

    testDeleteLsmdb("testdb.lsm");
    db1 = newLsmConnection("testdb.lsm", 0, 0, pRc);
    testPagesize(db1, 4096, 1024, pRc);
    db2 = newLsmConnection("testdb.lsm", 1024, 64*1024, pRc);
    testPagesize(db2, 4096, 1024, pRc);
    lsm_close(db1);
    lsm_close(db2);

    testDeleteLsmdb("testdb.lsm");
    db1 = newLsmConnection("testdb.lsm", 1024, 64*1024, pRc);
    testPagesize(db1, 1024, 64*1024, pRc);
    db2 = newLsmConnection("testdb.lsm", 0, 0, pRc);
    testPagesize(db2, 1024, 64*1024, pRc);
    lsm_close(db1);
    lsm_close(db2);

    testDeleteLsmdb("testdb.lsm");
    db1 = newLsmConnection("testdb.lsm", 8192, 2*1024, pRc);
    testPagesize(db1, 8192, 2*1024, pRc);
    db2 = newLsmConnection("testdb.lsm", 1024, 64*1024, pRc);
    testPagesize(db2, 8192, 2*1024, pRc);
    lsm_close(db1);
    lsm_close(db2);

    testCaseFinish(*pRc);
  }
}
