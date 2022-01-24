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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {scalar_t__ rc; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbMain; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {int* abIndexed; int nTblCol; char const* zTbl; scalar_t__ eType; scalar_t__ nIndex; int /*<<< orphan*/  abTblPk; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 scalar_t__ RBU_PK_WITHOUT_ROWID ; 
 scalar_t__ SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(sqlite3rbu *p, RbuObjIter *pIter){
  sqlite3_stmt *pList = 0;
  int bIndex = 0;

  if( p->rc==SQLITE_OK ){
    FUNC0(pIter->abIndexed, pIter->abTblPk, sizeof(u8)*pIter->nTblCol);
    p->rc = FUNC2(p->dbMain, &pList, &p->zErrmsg,
        FUNC6("PRAGMA main.index_list = %Q", pIter->zTbl)
    );
  }

  pIter->nIndex = 0;
  while( p->rc==SQLITE_OK && SQLITE_ROW==FUNC7(pList) ){
    const char *zIdx = (const char*)FUNC5(pList, 1);
    int bPartial = FUNC4(pList, 4);
    sqlite3_stmt *pXInfo = 0;
    if( zIdx==0 ) break;
    if( bPartial ){
      FUNC1(pIter->abIndexed, 0x01, sizeof(u8)*pIter->nTblCol);
    }
    p->rc = FUNC2(p->dbMain, &pXInfo, &p->zErrmsg,
        FUNC6("PRAGMA main.index_xinfo = %Q", zIdx)
    );
    while( p->rc==SQLITE_OK && SQLITE_ROW==FUNC7(pXInfo) ){
      int iCid = FUNC4(pXInfo, 1);
      if( iCid>=0 ) pIter->abIndexed[iCid] = 1;
    }
    FUNC3(p, pXInfo);
    bIndex = 1;
    pIter->nIndex++;
  }

  if( pIter->eType==RBU_PK_WITHOUT_ROWID ){
    /* "PRAGMA index_list" includes the main PK b-tree */
    pIter->nIndex--;
  }

  FUNC3(p, pList);
  if( bIndex==0 ) pIter->abIndexed = 0;
}