#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_db ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_7__ {int member_1; int member_2; int member_3; int member_4; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  hdr2; int /*<<< orphan*/  hdr1; } ;
typedef  TYPE_1__ ShmHeader ;
typedef  TYPE_2__ DatasourceDefn ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_CONFIG_AUTOFLUSH ; 
 int LSM_OK ; 
 int TEST_CKSUM_BYTES ; 
 int /*<<< orphan*/  TEST_DATASOURCE_RANDOM ; 
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 

__attribute__((used)) static void FUNC18(const char *zDb, const char *zCksum, int *pRc){
  if( *pRc==LSM_OK ){
    const DatasourceDefn defn = {TEST_DATASOURCE_RANDOM, 20, 25, 100, 500};
    Datasource *pData;
    const char *zCopy = "testcopy.lsm";
    char zCksum2[TEST_CKSUM_BYTES];
    TestDb *pDb = 0;
    int rc;

    pData = FUNC13(&defn);

    FUNC11(zDb, zCopy);
    rc = FUNC7("test_no_recovery=1", zCopy, 0, &pDb);
    if( rc==0 ){
      ShmHeader *pHdr;
      lsm_db *db;
      FUNC8(pDb, zCksum2);
      FUNC10(zCksum, zCksum2, &rc);

      FUNC17(pDb, pData, 1, 10, &rc);
      FUNC14(pDb, pData, 1, 10, &rc);

      /* Test that the two tree-headers are now consistent. */
      pHdr = FUNC0(zCopy);
      if( rc==0 && FUNC5(&pHdr->hdr1, &pHdr->hdr2, sizeof(pHdr->hdr1)) ){
        rc = 1;
      }
      FUNC16(pHdr);

      if( rc==0 ){
        int nBuf = 64;
        db = FUNC6(pDb);
        FUNC3(db, LSM_CONFIG_AUTOFLUSH, &nBuf);
        FUNC1(db, 1);
        FUNC2(db, 0);
        rc = FUNC4(db, 0, 0, 0);
      }

      FUNC8(pDb, zCksum2);
      FUNC10(zCksum, zCksum2, &rc);
    }

    FUNC12(pData);
    FUNC9(&pDb);
    FUNC15(zCopy);
    *pRc = rc;
  }
}