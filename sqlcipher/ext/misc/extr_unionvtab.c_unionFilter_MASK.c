#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ pVtab; } ;
typedef  TYPE_2__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_13__ {int /*<<< orphan*/  zErrMsg; } ;
struct TYPE_15__ {int nSrc; TYPE_1__ base; TYPE_4__* aSrc; scalar_t__ bSwarm; } ;
typedef  TYPE_3__ UnionTab ;
struct TYPE_16__ {scalar_t__ iMax; scalar_t__ iMin; char* zDb; int /*<<< orphan*/  zTab; } ;
typedef  TYPE_4__ UnionSrc ;
struct TYPE_17__ {int iTab; int /*<<< orphan*/  pStmt; scalar_t__ iMaxRowid; } ;
typedef  TYPE_5__ UnionCsr ;

/* Variables and functions */
 scalar_t__ LARGEST_INT64 ; 
 scalar_t__ SMALLEST_INT64 ; 
 int SQLITE_INDEX_CONSTRAINT_EQ ; 
 int SQLITE_INDEX_CONSTRAINT_GE ; 
 int SQLITE_INDEX_CONSTRAINT_GT ; 
 int SQLITE_INDEX_CONSTRAINT_LE ; 
 int SQLITE_INDEX_CONSTRAINT_LT ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*,char const*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,size_t) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  UnionTab *pTab = (UnionTab*)(pVtabCursor->pVtab);
  UnionCsr *pCsr = (UnionCsr*)pVtabCursor;
  int rc = SQLITE_OK;
  int i;
  char *zSql = 0;
  int bZero = 0;

  sqlite3_int64 iMin = SMALLEST_INT64;
  sqlite3_int64 iMax = LARGEST_INT64;

  FUNC0( idxNum==0 
       || idxNum==SQLITE_INDEX_CONSTRAINT_EQ
       || idxNum==SQLITE_INDEX_CONSTRAINT_LE
       || idxNum==SQLITE_INDEX_CONSTRAINT_GE
       || idxNum==SQLITE_INDEX_CONSTRAINT_LT
       || idxNum==SQLITE_INDEX_CONSTRAINT_GT
       || idxNum==(SQLITE_INDEX_CONSTRAINT_GE|SQLITE_INDEX_CONSTRAINT_LE)
  );

  (void)idxStr;  /* Suppress harmless warning */
  
  if( idxNum==SQLITE_INDEX_CONSTRAINT_EQ ){
    FUNC0( argc==1 );
    iMin = iMax = FUNC3(argv[0]);
  }else{

    if( idxNum & (SQLITE_INDEX_CONSTRAINT_LE|SQLITE_INDEX_CONSTRAINT_LT) ){
      FUNC0( argc>=1 );
      iMax = FUNC3(argv[0]);
      if( idxNum & SQLITE_INDEX_CONSTRAINT_LT ){
        if( iMax==SMALLEST_INT64 ){
          bZero = 1;
        }else{
          iMax--;
        }
      }
    }

    if( idxNum & (SQLITE_INDEX_CONSTRAINT_GE|SQLITE_INDEX_CONSTRAINT_GT) ){
      FUNC0( argc>=1 );
      iMin = FUNC3(argv[argc-1]);
      if( idxNum & SQLITE_INDEX_CONSTRAINT_GT ){
        if( iMin==LARGEST_INT64 ){
          bZero = 1;
        }else{
          iMin++;
        }
      }
    }
  }

  FUNC4(pCsr);
  if( bZero ){
    return SQLITE_OK;
  }

  for(i=0; i<pTab->nSrc; i++){
    UnionSrc *pSrc = &pTab->aSrc[i];
    if( iMin>pSrc->iMax || iMax<pSrc->iMin ){
      continue;
    }

    zSql = FUNC2("%z%sSELECT rowid, * FROM %s%q%s%Q"
        , zSql
        , (zSql ? " UNION ALL " : "")
        , (pSrc->zDb ? "'" : "")
        , (pSrc->zDb ? pSrc->zDb : "")
        , (pSrc->zDb ? "'." : "")
        , pSrc->zTab
    );
    if( zSql==0 ){
      rc = SQLITE_NOMEM;
      break;
    }

    if( iMin==iMax ){
      zSql = FUNC2("%z WHERE rowid=%lld", zSql, iMin);
    }else{
      const char *zWhere = "WHERE";
      if( iMin!=SMALLEST_INT64 && iMin>pSrc->iMin ){
        zSql = FUNC2("%z WHERE rowid>=%lld", zSql, iMin);
        zWhere = "AND";
      }
      if( iMax!=LARGEST_INT64 && iMax<pSrc->iMax ){
        zSql = FUNC2("%z %s rowid<=%lld", zSql, zWhere, iMax);
      }
    }

    if( pTab->bSwarm ){
      pCsr->iTab = i;
      pCsr->iMaxRowid = iMax;
      rc = FUNC8(pTab, i, &pTab->base.zErrMsg);
      break;
    }
  }

  if( zSql==0 ){
    return rc;
  }else{
    sqlite3 *db = FUNC5(pTab, &pTab->aSrc[pCsr->iTab]);
    pCsr->pStmt = FUNC9(&rc, db, zSql, &pTab->base.zErrMsg);
    if( pCsr->pStmt ){
      FUNC6(pTab, pCsr->iTab);
    }
    FUNC1(zSql);
  }
  if( rc!=SQLITE_OK ) return rc;
  return FUNC7(pVtabCursor);
}