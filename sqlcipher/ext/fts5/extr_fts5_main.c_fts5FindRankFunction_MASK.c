#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int sqlite3_int64 ;
struct TYPE_14__ {int /*<<< orphan*/  db; } ;
struct TYPE_9__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {char* zRank; char* zRankArgs; int nRankArg; int /*<<< orphan*/ * pRank; int /*<<< orphan*/ * pRankArgStmt; int /*<<< orphan*/ ** apRankArg; TYPE_1__ base; } ;
struct TYPE_10__ {scalar_t__ zErrMsg; } ;
struct TYPE_11__ {TYPE_2__ base; TYPE_6__* pConfig; } ;
struct TYPE_12__ {TYPE_3__ p; } ;
typedef  TYPE_4__ Fts5FullTable ;
typedef  TYPE_5__ Fts5Cursor ;
typedef  TYPE_6__ Fts5Config ;
typedef  int /*<<< orphan*/  Fts5Auxiliary ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_PREPARE_PERSISTENT ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,char const*) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 char* FUNC3 (int*,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(Fts5Cursor *pCsr){
  Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
  Fts5Config *pConfig = pTab->p.pConfig;
  int rc = SQLITE_OK;
  Fts5Auxiliary *pAux = 0;
  const char *zRank = pCsr->zRank;
  const char *zRankArgs = pCsr->zRankArgs;

  if( zRankArgs ){
    char *zSql = FUNC3(&rc, "SELECT %s", zRankArgs);
    if( zSql ){
      sqlite3_stmt *pStmt = 0;
      rc = FUNC9(pConfig->db, zSql, -1,
                              SQLITE_PREPARE_PERSISTENT, &pStmt, 0);
      FUNC7(zSql);
      FUNC0( rc==SQLITE_OK || pCsr->pRankArgStmt==0 );
      if( rc==SQLITE_OK ){
        if( SQLITE_ROW==FUNC10(pStmt) ){
          sqlite3_int64 nByte;
          pCsr->nRankArg = FUNC4(pStmt);
          nByte = sizeof(sqlite3_value*)*pCsr->nRankArg;
          pCsr->apRankArg = (sqlite3_value**)FUNC2(&rc, nByte);
          if( rc==SQLITE_OK ){
            int i;
            for(i=0; i<pCsr->nRankArg; i++){
              pCsr->apRankArg[i] = FUNC5(pStmt, i);
            }
          }
          pCsr->pRankArgStmt = pStmt;
        }else{
          rc = FUNC6(pStmt);
          FUNC0( rc!=SQLITE_OK );
        }
      }
    }
  }

  if( rc==SQLITE_OK ){
    pAux = FUNC1(pTab, zRank);
    if( pAux==0 ){
      FUNC0( pTab->p.base.zErrMsg==0 );
      pTab->p.base.zErrMsg = FUNC8("no such function: %s", zRank);
      rc = SQLITE_ERROR;
    }
  }

  pCsr->pRank = pAux;
  return rc;
}