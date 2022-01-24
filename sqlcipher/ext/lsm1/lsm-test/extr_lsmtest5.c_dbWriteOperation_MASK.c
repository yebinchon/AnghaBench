#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_6__ {int nKey; } ;
typedef  TYPE_1__ DbParameters ;

/* Variables and functions */
 int DB_KEY_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char const*,int*) ; 

__attribute__((used)) static int FUNC9(
  DbParameters *pParam,           /* Database parameters */
  TestDb *pDb,                    /* Database connection handle */
  int iKey,                       /* Key to write to */
  const char *zValue,             /* Nul-terminated value to write */
  int *pRc                        /* IN/OUT: Error code */
){
  const int iMax = FUNC4(pParam);
  char zKey[DB_KEY_BYTES];
  int i;
  int rc;

  FUNC0( iKey>=0 && iKey<pParam->nKey );
  FUNC3(pParam, 0, iKey, zKey);

  /* Open a write transaction. This may fail - SQLITE4_BUSY */
  if( *pRc==0 && FUNC6(pDb) ){
    rc = FUNC5(pDb, 2);
    if( rc==5 ) return 0;
    *pRc = rc;
  }

  FUNC8(pDb, zKey, zValue, pRc);
  for(i=1; i<=iMax; i++){
    char zCksum[DB_KEY_BYTES];
    u32 iCksum = 0;

    iCksum = FUNC1(pParam, pDb, i, iKey, pRc);
    FUNC2(iCksum, zCksum);
    FUNC3(pParam, i, iKey, zKey);
    FUNC8(pDb, zKey, zCksum, pRc);
  }
  if( FUNC6(pDb) ) FUNC7(pDb, 0, pRc);
  return 1;
}