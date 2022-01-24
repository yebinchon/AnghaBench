#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int rc; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbMain; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_9__ {char const* zIdx; int bCleanup; char const* zTbl; char const* zDataTbl; int /*<<< orphan*/ * pIdxIter; void* bUnique; void* iTnum; int /*<<< orphan*/ * pTblIter; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(sqlite3rbu *p, RbuObjIter *pIter){
  int rc = p->rc;
  if( rc==SQLITE_OK ){

    /* Free any SQLite statements used while processing the previous object */ 
    FUNC0(pIter);
    if( pIter->zIdx==0 ){
      rc = FUNC7(p->dbMain,
          "DROP TRIGGER IF EXISTS temp.rbu_insert_tr;"
          "DROP TRIGGER IF EXISTS temp.rbu_update1_tr;"
          "DROP TRIGGER IF EXISTS temp.rbu_update2_tr;"
          "DROP TRIGGER IF EXISTS temp.rbu_delete_tr;"
          , 0, 0, &p->zErrmsg
      );
    }

    if( rc==SQLITE_OK ){
      if( pIter->bCleanup ){
        FUNC2(pIter);
        pIter->bCleanup = 0;
        rc = FUNC8(pIter->pTblIter);
        if( rc!=SQLITE_ROW ){
          rc = FUNC3(pIter->pTblIter, &p->zErrmsg);
          pIter->zTbl = 0;
        }else{
          pIter->zTbl = (const char*)FUNC6(pIter->pTblIter, 0);
          pIter->zDataTbl = (const char*)FUNC6(pIter->pTblIter,1);
          rc = (pIter->zDataTbl && pIter->zTbl) ? SQLITE_OK : SQLITE_NOMEM;
        }
      }else{
        if( pIter->zIdx==0 ){
          sqlite3_stmt *pIdx = pIter->pIdxIter;
          rc = FUNC4(pIdx, 1, pIter->zTbl, -1, SQLITE_STATIC);
        }
        if( rc==SQLITE_OK ){
          rc = FUNC8(pIter->pIdxIter);
          if( rc!=SQLITE_ROW ){
            rc = FUNC3(pIter->pIdxIter, &p->zErrmsg);
            pIter->bCleanup = 1;
            pIter->zIdx = 0;
          }else{
            pIter->zIdx = (const char*)FUNC6(pIter->pIdxIter, 0);
            pIter->iTnum = FUNC5(pIter->pIdxIter, 1);
            pIter->bUnique = FUNC5(pIter->pIdxIter, 2);
            rc = pIter->zIdx ? SQLITE_OK : SQLITE_NOMEM;
          }
        }
      }
    }
  }

  if( rc!=SQLITE_OK ){
    FUNC1(pIter);
    p->rc = rc;
  }
  return rc;
}