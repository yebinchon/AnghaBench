#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  hIdx; int /*<<< orphan*/  pzErrmsg; int /*<<< orphan*/ * dbm; } ;
typedef  TYPE_1__ sqlite3expert ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_17__ {struct TYPE_17__* pLink; } ;
struct TYPE_16__ {TYPE_2__* pTab; } ;
struct TYPE_15__ {char* zName; } ;
typedef  TYPE_2__ IdxTable ;
typedef  TYPE_3__ IdxScan ;
typedef  TYPE_4__ IdxConstraint ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 char* FUNC0 (int*,char*,TYPE_2__*,TYPE_4__*) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,char const*,...) ; 

__attribute__((used)) static int FUNC7(
  sqlite3expert *p,
  IdxScan *pScan,
  IdxConstraint *pEq, 
  IdxConstraint *pTail
){
  sqlite3 *dbm = p->dbm;
  int rc = SQLITE_OK;
  if( (pEq || pTail) && 0==FUNC1(&rc, dbm, pScan, pEq, pTail) ){
    IdxTable *pTab = pScan->pTab;
    char *zCols = 0;
    char *zIdx = 0;
    IdxConstraint *pCons;
    unsigned int h = 0;
    const char *zFmt;

    for(pCons=pEq; pCons; pCons=pCons->pLink){
      zCols = FUNC0(&rc, zCols, pTab, pCons);
    }
    for(pCons=pTail; pCons; pCons=pCons->pLink){
      zCols = FUNC0(&rc, zCols, pTab, pCons);
    }

    if( rc==SQLITE_OK ){
      /* Hash the list of columns to come up with a name for the index */
      const char *zTable = pScan->pTab->zName;
      char *zName;                /* Index name */
      int i;
      for(i=0; zCols[i]; i++){
        h += ((h<<3) + zCols[i]);
      }
      zName = FUNC6("%s_idx_%08x", zTable, h);
      if( zName==0 ){ 
        rc = SQLITE_NOMEM;
      }else{
        if( FUNC3(zTable) ){
          zFmt = "CREATE INDEX '%q' ON %Q(%s)";
        }else{
          zFmt = "CREATE INDEX %s ON %s(%s)";
        }
        zIdx = FUNC6(zFmt, zName, zTable, zCols);
        if( !zIdx ){
          rc = SQLITE_NOMEM;
        }else{
          rc = FUNC4(dbm, zIdx, 0, 0, p->pzErrmsg);
          FUNC2(&rc, &p->hIdx, zName, zIdx);
        }
        FUNC5(zName);
        FUNC5(zIdx);
      }
    }

    FUNC5(zCols);
  }
  return rc;
}