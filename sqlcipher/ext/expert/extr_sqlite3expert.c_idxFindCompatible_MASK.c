#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_9__ {int bFlag; int iCol; struct TYPE_9__* pLink; int /*<<< orphan*/  zColl; } ;
struct TYPE_8__ {TYPE_1__* pTab; } ;
struct TYPE_7__ {char* zName; } ;
typedef  TYPE_2__ IdxScan ;
typedef  TYPE_3__ IdxConstraint ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC7(
  int *pRc,                       /* OUT: Error code */
  sqlite3* dbm,                   /* Database to search */
  IdxScan *pScan,                 /* Scan for table to search for index on */
  IdxConstraint *pEq,             /* List of == constraints */
  IdxConstraint *pTail            /* List of range constraints */
){
  const char *zTbl = pScan->pTab->zName;
  sqlite3_stmt *pIdxList = 0;
  IdxConstraint *pIter;
  int nEq = 0;                    /* Number of elements in pEq */
  int rc;

  /* Count the elements in list pEq */
  for(pIter=pEq; pIter; pIter=pIter->pLink) nEq++;

  rc = FUNC1(dbm, &pIdxList, 0, "PRAGMA index_list=%Q", zTbl);
  while( rc==SQLITE_OK && FUNC5(pIdxList)==SQLITE_ROW ){
    int bMatch = 1;
    IdxConstraint *pT = pTail;
    sqlite3_stmt *pInfo = 0;
    const char *zIdx = (const char*)FUNC3(pIdxList, 1);

    /* Zero the IdxConstraint.bFlag values in the pEq list */
    for(pIter=pEq; pIter; pIter=pIter->pLink) pIter->bFlag = 0;

    rc = FUNC1(dbm, &pInfo, 0, "PRAGMA index_xInfo=%Q", zIdx);
    while( rc==SQLITE_OK && FUNC5(pInfo)==SQLITE_ROW ){
      int iIdx = FUNC2(pInfo, 0);
      int iCol = FUNC2(pInfo, 1);
      const char *zColl = (const char*)FUNC3(pInfo, 4);

      if( iIdx<nEq ){
        for(pIter=pEq; pIter; pIter=pIter->pLink){
          if( pIter->bFlag ) continue;
          if( pIter->iCol!=iCol ) continue;
          if( FUNC6(pIter->zColl, zColl) ) continue;
          pIter->bFlag = 1;
          break;
        }
        if( pIter==0 ){
          bMatch = 0;
          break;
        }
      }else{
        if( pT ){
          if( pT->iCol!=iCol || FUNC6(pT->zColl, zColl) ){
            bMatch = 0;
            break;
          }
          pT = pT->pLink;
        }
      }
    }
    FUNC0(&rc, pInfo);

    if( rc==SQLITE_OK && bMatch ){
      FUNC4(pIdxList);
      return 1;
    }
  }
  FUNC0(&rc, pIdxList);

  *pRc = rc;
  return 0;
}