
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_3__ {int nKey1; int nKey2; int bReverse; scalar_t__ nRow; scalar_t__ cksum1; scalar_t__ cksum2; void* pKey2; void* pKey1; int * pDb; } ;
typedef TYPE_1__ ScanResult ;


 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,...) ;
 int scanCompareCb ;
 int tdb_scan (int *,void*,int,void*,int,void*,int,int ) ;
 int testSetError (int) ;
 scalar_t__ test_scan_debug ;

void testScanCompare(
  TestDb *pDb1,
  TestDb *pDb2,
  int bReverse,
  void *pKey1, int nKey1,
  void *pKey2, int nKey2,
  int *pRc
){
  static int nCall = 0; nCall++;
  if( *pRc==0 ){
    ScanResult res1;
    ScanResult res2;
    void *pRes1 = (void *)&res1;
    void *pRes2 = (void *)&res2;

    memset(&res1, 0, sizeof(ScanResult));
    memset(&res2, 0, sizeof(ScanResult));

    res1.pDb = pDb1;
    res1.nKey1 = nKey1; res1.pKey1 = pKey1;
    res1.nKey2 = nKey2; res1.pKey2 = pKey2;
    res1.bReverse = bReverse;
    res2.pDb = pDb2;
    res2.nKey1 = nKey1; res2.pKey1 = pKey1;
    res2.nKey2 = nKey2; res2.pKey2 = pKey2;
    res2.bReverse = bReverse;

    tdb_scan(pDb1, pRes1, bReverse, pKey1, nKey1, pKey2, nKey2, scanCompareCb);
if( test_scan_debug ) printf("\n\n\n");
    tdb_scan(pDb2, pRes2, bReverse, pKey1, nKey1, pKey2, nKey2, scanCompareCb);
if( test_scan_debug ) printf("\n\n\n");

    if( res1.nRow!=res2.nRow
     || res1.cksum1!=res2.cksum1
     || res1.cksum2!=res2.cksum2
    ){
      printf("expected: %d %X %X\n", res1.nRow, res1.cksum1, res1.cksum2);
      printf("got:      %d %X %X\n", res2.nRow, res2.cksum1, res2.cksum2);
      testSetError(1);
      *pRc = 1;
    }
  }
}
