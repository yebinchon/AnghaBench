#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_7__ {int* aCksum; } ;
struct TYPE_6__ {int bWriter; TYPE_4__ hdr2; TYPE_4__ hdr1; } ;
typedef  TYPE_1__ ShmHeader ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int TEST_CKSUM_BYTES ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (char*,char*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,void*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,void*,int,int*) ; 

__attribute__((used)) static void FUNC13(int *pRc){
  int rc = 0;
  TestDb *pDb = 0;
  Datasource *pData = 0;

  rc = FUNC3("autowork=0", "testdb.lsm", 1, &pDb);
  if( rc==0 ){
    ShmHeader *pHdr1;
    ShmHeader *pHdr2;
    char zCksum1[TEST_CKSUM_BYTES];
    char zCksum2[TEST_CKSUM_BYTES];

    pHdr1 = FUNC9(sizeof(ShmHeader));
    pHdr2 = FUNC9(sizeof(ShmHeader));
    FUNC2(pDb, &pData);

    /* Grab a copy of the shared-memory header. And the db checksum */
    FUNC10("testdb.lsm-shm", 0, (void *)pHdr1, sizeof(ShmHeader), &rc);
    FUNC5(pDb, zCksum1);

    /* Modify the database */
    FUNC4(pDb, 2, &rc);
    FUNC11(pDb, pData, 30000, 200, &rc);
    FUNC7(pDb, 0, &rc);

    /* Grab a second copy of the shared-memory header. And the db checksum */
    FUNC10("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    FUNC5(pDb, zCksum2);
    FUNC0("testdb.lsm", zCksum2, &rc);

    /* If both tree-headers are valid, tree-header-1 is used. */
    FUNC1(&pHdr2->hdr1, &pHdr1->hdr1, sizeof(pHdr1->hdr1));
    pHdr2->bWriter = 1;
    FUNC12("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    FUNC0("testdb.lsm", zCksum1, &rc);

    /* If both tree-headers are valid, tree-header-1 is used. */
    FUNC1(&pHdr2->hdr1, &pHdr2->hdr2, sizeof(pHdr1->hdr1));
    FUNC1(&pHdr2->hdr2, &pHdr1->hdr1, sizeof(pHdr1->hdr1));
    pHdr2->bWriter = 1;
    FUNC12("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    FUNC0("testdb.lsm", zCksum2, &rc);

    /* If tree-header 1 is invalid, tree-header-2 is used */
    FUNC1(&pHdr2->hdr2, &pHdr2->hdr1, sizeof(pHdr1->hdr1));
    pHdr2->hdr1.aCksum[0] = 5;
    pHdr2->hdr1.aCksum[0] = 6;
    pHdr2->bWriter = 1;
    FUNC12("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    FUNC0("testdb.lsm", zCksum2, &rc);

    /* If tree-header 2 is invalid, tree-header-1 is used */
    FUNC1(&pHdr2->hdr1, &pHdr2->hdr2, sizeof(pHdr1->hdr1));
    pHdr2->hdr2.aCksum[0] = 5;
    pHdr2->hdr2.aCksum[0] = 6;
    pHdr2->bWriter = 1;
    FUNC12("testdb.lsm-shm", 0, (void *)pHdr2, sizeof(ShmHeader), &rc);
    FUNC0("testdb.lsm", zCksum2, &rc);

    FUNC8(pHdr1);
    FUNC8(pHdr2);
    FUNC6(&pDb);
  }

  *pRc = rc;
}