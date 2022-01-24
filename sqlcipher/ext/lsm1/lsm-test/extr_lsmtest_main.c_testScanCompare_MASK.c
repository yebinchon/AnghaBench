#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_3__ {int nKey1; int nKey2; int bReverse; scalar_t__ nRow; scalar_t__ cksum1; scalar_t__ cksum2; void* pKey2; void* pKey1; int /*<<< orphan*/ * pDb; } ;
typedef  TYPE_1__ ScanResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  scanCompareCb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int,void*,int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ test_scan_debug ; 

void FUNC4(
  TestDb *pDb1,                   /* Control (trusted) database */
  TestDb *pDb2,                   /* Database being tested */
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

    FUNC0(&res1, 0, sizeof(ScanResult));
    FUNC0(&res2, 0, sizeof(ScanResult));

    res1.pDb = pDb1;
    res1.nKey1 = nKey1; res1.pKey1 = pKey1;
    res1.nKey2 = nKey2; res1.pKey2 = pKey2;
    res1.bReverse = bReverse;
    res2.pDb = pDb2;
    res2.nKey1 = nKey1; res2.pKey1 = pKey1;
    res2.nKey2 = nKey2; res2.pKey2 = pKey2;
    res2.bReverse = bReverse;

    FUNC2(pDb1, pRes1, bReverse, pKey1, nKey1, pKey2, nKey2, scanCompareCb);
if( test_scan_debug ) FUNC1("\n\n\n");
    FUNC2(pDb2, pRes2, bReverse, pKey1, nKey1, pKey2, nKey2, scanCompareCb);
if( test_scan_debug ) FUNC1("\n\n\n");

    if( res1.nRow!=res2.nRow 
     || res1.cksum1!=res2.cksum1 
     || res1.cksum2!=res2.cksum2
    ){
      FUNC1("expected: %d %X %X\n", res1.nRow, res1.cksum1, res1.cksum2);
      FUNC1("got:      %d %X %X\n", res2.nRow, res2.cksum1, res2.cksum2);
      FUNC3(1);
      *pRc = 1;
    }
  }
}