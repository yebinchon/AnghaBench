#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int rc; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbMain; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_13__ {scalar_t__ eType; int /*<<< orphan*/  zTbl; TYPE_2__* pRbuUpdate; int /*<<< orphan*/  nTblCol; } ;
struct TYPE_12__ {char* zMask; int /*<<< orphan*/ * pUpdate; struct TYPE_12__* pNext; } ;
typedef  TYPE_2__ RbuUpdateStmt ;
typedef  TYPE_3__ RbuObjIter ;

/* Variables and functions */
 scalar_t__ RBU_PK_VTAB ; 
 int SQLITE_OK ; 
 int SQLITE_RBU_UPDATE_CACHESIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 char* FUNC4 (TYPE_1__*,TYPE_3__*,char const*) ; 
 char* FUNC5 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char const*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 

__attribute__((used)) static int FUNC10(
  sqlite3rbu *p,                  /* RBU handle */
  RbuObjIter *pIter,              /* Object iterator */
  const char *zMask,              /* rbu_control value ('x.x.') */
  sqlite3_stmt **ppStmt           /* OUT: UPDATE statement handle */
){
  RbuUpdateStmt **pp;
  RbuUpdateStmt *pUp = 0;
  int nUp = 0;

  /* In case an error occurs */
  *ppStmt = 0;

  /* Search for an existing statement. If one is found, shift it to the front
  ** of the LRU queue and return immediately. Otherwise, leave nUp pointing
  ** to the number of statements currently in the cache and pUp to the
  ** last object in the list.  */
  for(pp=&pIter->pRbuUpdate; *pp; pp=&((*pp)->pNext)){
    pUp = *pp;
    if( FUNC9(pUp->zMask, zMask)==0 ){
      *pp = pUp->pNext;
      pUp->pNext = pIter->pRbuUpdate;
      pIter->pRbuUpdate = pUp;
      *ppStmt = pUp->pUpdate; 
      return SQLITE_OK;
    }
    nUp++;
  }
  FUNC0( pUp==0 || pUp->pNext==0 );

  if( nUp>=SQLITE_RBU_UPDATE_CACHESIZE ){
    for(pp=&pIter->pRbuUpdate; *pp!=pUp; pp=&((*pp)->pNext));
    *pp = 0;
    FUNC6(pUp->pUpdate);
    pUp->pUpdate = 0;
  }else{
    pUp = (RbuUpdateStmt*)FUNC3(p, sizeof(RbuUpdateStmt)+pIter->nTblCol+1);
  }

  if( pUp ){
    char *zWhere = FUNC5(p, pIter);
    char *zSet = FUNC4(p, pIter, zMask);
    char *zUpdate = 0;

    pUp->zMask = (char*)&pUp[1];
    FUNC1(pUp->zMask, zMask, pIter->nTblCol);
    pUp->pNext = pIter->pRbuUpdate;
    pIter->pRbuUpdate = pUp;

    if( zSet ){
      const char *zPrefix = "";

      if( pIter->eType!=RBU_PK_VTAB ) zPrefix = "rbu_imp_";
      zUpdate = FUNC8("UPDATE \"%s%w\" SET %s WHERE %s", 
          zPrefix, pIter->zTbl, zSet, zWhere
      );
      p->rc = FUNC2(
          p->dbMain, &pUp->pUpdate, &p->zErrmsg, zUpdate
      );
      *ppStmt = pUp->pUpdate;
    }
    FUNC7(zWhere);
    FUNC7(zSet);
  }

  return p->rc;
}