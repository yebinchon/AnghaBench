#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  TestDb ;
typedef  int /*<<< orphan*/  DbParameters ;

/* Variables and functions */
 int DB_KEY_BYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,int*) ; 

__attribute__((used)) static void FUNC8(
  DbParameters *pParam,           /* Database parameters */
  TestDb *pDb,                    /* Database connection handle */
  void (*xDelay)(void *),
  void *pDelayCtx,
  int iKey,                       /* Key to read */
  int *pRc                        /* IN/OUT: Error code */
){
  const int iMax = FUNC3(pParam);
  int i;

  if( FUNC4(pDb) ) FUNC5(pDb, 1, pRc);
  for(i=1; *pRc==0 && i<=iMax; i++){
    char zCksum[DB_KEY_BYTES];
    char zKey[DB_KEY_BYTES];
    u32 iCksum = 0;

    iCksum = FUNC0(pParam, pDb, i, iKey, pRc);
    if( iCksum ){
      if( xDelay && i==1 ) xDelay(pDelayCtx);
      FUNC1(iCksum, zCksum);
      FUNC2(pParam, i, iKey, zKey);
      FUNC7(pDb, zKey, zCksum, pRc);
    }
  }
  if( FUNC4(pDb) ) FUNC6(pDb, 0, pRc);
}