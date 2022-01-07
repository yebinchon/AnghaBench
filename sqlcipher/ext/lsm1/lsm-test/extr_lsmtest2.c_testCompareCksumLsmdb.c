
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int TEST_CKSUM_BYTES ;
 int strcmp (char*,char const*) ;
 int tdb_lsm_open (char*,char const*,int ,int **) ;
 int testCksumDatabase (int *,char*) ;
 int testClose (int **) ;
 int testPrintError (char*,char*,char const*,...) ;
 int test_failed () ;

__attribute__((used)) static void testCompareCksumLsmdb(
  const char *zFile,
  int bCompress,
  const char *zExpect1,
  const char *zExpect2,
  int *pRc
){
  if( *pRc==0 ){
    char zCksum[TEST_CKSUM_BYTES];
    TestDb *pDb;

    *pRc = tdb_lsm_open((bCompress?"compression=1 mmap=0":""), zFile, 0, &pDb);
    testCksumDatabase(pDb, zCksum);
    testClose(&pDb);

    if( *pRc==0 ){
      int r1 = 0;
      int r2 = -1;

      r1 = strcmp(zCksum, zExpect1);
      if( zExpect2 ) r2 = strcmp(zCksum, zExpect2);
      if( r1 && r2 ){
        if( zExpect2 ){
          testPrintError("testCompareCksumLsmdb: \"%s\" != (\"%s\" OR \"%s\")",
              zCksum, zExpect1, zExpect2
          );
        }else{
          testPrintError("testCompareCksumLsmdb: \"%s\" != \"%s\"",
              zCksum, zExpect1
          );
        }
        *pRc = 1;
        test_failed();
      }
    }
  }
}
