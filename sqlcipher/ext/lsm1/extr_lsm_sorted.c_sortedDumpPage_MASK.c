#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
struct TYPE_13__ {int /*<<< orphan*/  pFS; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_15__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {int /*<<< orphan*/  z; } ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__ LsmString ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  TYPE_3__ LsmBlob ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_OK ; 
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC13 (char*,int,int) ; 
 int FUNC14 (char*,int) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,TYPE_3__*) ; 
 int FUNC16 (char*,int) ; 
 scalar_t__ FUNC17 (char*,int) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,void**,TYPE_3__*) ; 

void FUNC21(lsm_db *pDb, Segment *pRun, Page *pPg, int bVals){
  LsmBlob blob = {0, 0, 0};       /* LsmBlob used for keys */
  LsmString s;
  int i;

  int nRec;
  int iPtr;
  int flags;
  u8 *aData;
  int nData;

  aData = FUNC1(pPg, &nData);

  nRec = FUNC16(aData, nData);
  iPtr = (int)FUNC17(aData, nData);
  flags = FUNC14(aData, nData);

  FUNC10(&s, pDb->pEnv);
  FUNC8(&s,"nCell=%d iPtr=%d flags=%d {", nRec, iPtr, flags);
  if( flags&SEGMENT_BTREE_FLAG ) iPtr = 0;

  for(i=0; i<nRec; i++){
    Page *pRef = 0;               /* Pointer to page iRef */
    int iChar;
    u8 *aKey; int nKey = 0;       /* Key */
    u8 *aVal = 0; int nVal = 0;   /* Value */
    int iTopic;
    u8 *aCell;
    int iPgPtr;
    int eType;

    aCell = FUNC13(aData, nData, i);
    eType = *aCell++;
    FUNC0( (flags & SEGMENT_BTREE_FLAG) || eType!=0 );
    aCell += FUNC11(aCell, &iPgPtr);

    if( eType==0 ){
      LsmPgno iRef;               /* Page number of referenced page */
      aCell += FUNC12(aCell, &iRef);
      FUNC3(pDb->pFS, pRun, iRef, &pRef);
      aKey = FUNC15(pRun, pRef, 0, &iTopic, &nKey, &blob);
    }else{
      aCell += FUNC11(aCell, &nKey);
      if( FUNC18(eType) ) aCell += FUNC11(aCell, &nVal);
      FUNC20(0, pPg, (aCell-aData), nKey+nVal, (void **)&aKey, &blob);
      aVal = &aKey[nKey];
      iTopic = eType;
    }

    FUNC8(&s, "%s%2X:", (i==0?"":" "), iTopic);
    for(iChar=0; iChar<nKey; iChar++){
      FUNC8(&s, "%c", FUNC2(aKey[iChar]) ? aKey[iChar] : '.');
    }
    if( nVal>0 && bVals ){
      FUNC8(&s, "##");
      for(iChar=0; iChar<nVal; iChar++){
        FUNC8(&s, "%c", FUNC2(aVal[iChar]) ? aVal[iChar] : '.');
      }
    }

    FUNC8(&s, " %d", iPgPtr+iPtr);
    FUNC5(pRef);
  }
  FUNC7(&s, "}", 1);

  FUNC6(pDb, LSM_OK, "      Page %d: %s", FUNC4(pPg), s.z);
  FUNC9(&s);

  FUNC19(&blob);
}