#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sqlite3_index_constraint_usage {int argvIndex; int omit; } ;
struct sqlite3_index_constraint {int iColumn; int op; int /*<<< orphan*/  usable; } ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_9__ {int nConstraint; int nOrderBy; int orderByConsumed; char* idxStr; int needToFreeIdxStr; double estimatedCost; int /*<<< orphan*/  idxNum; TYPE_1__* aOrderBy; struct sqlite3_index_constraint_usage* aConstraintUsage; struct sqlite3_index_constraint* aConstraint; } ;
typedef  TYPE_2__ sqlite3_index_info ;
struct TYPE_10__ {char* zTableName; char** aCol; int /*<<< orphan*/ * interp; scalar_t__* aIndex; int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ echo_vtab ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_8__ {size_t iColumn; scalar_t__ desc; } ;

/* Variables and functions */
 int SQLITE_ERROR ; 
#define  SQLITE_INDEX_CONSTRAINT_EQ 136 
#define  SQLITE_INDEX_CONSTRAINT_GE 135 
#define  SQLITE_INDEX_CONSTRAINT_GLOB 134 
#define  SQLITE_INDEX_CONSTRAINT_GT 133 
#define  SQLITE_INDEX_CONSTRAINT_LE 132 
#define  SQLITE_INDEX_CONSTRAINT_LIKE 131 
#define  SQLITE_INDEX_CONSTRAINT_LT 130 
#define  SQLITE_INDEX_CONSTRAINT_MATCH 129 
#define  SQLITE_INDEX_CONSTRAINT_REGEXP 128 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  TCL_GLOBAL_ONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 double FUNC2 (scalar_t__) ; 
 char* FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char const*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char**,char*,int,int*) ; 

__attribute__((used)) static int FUNC13(sqlite3_vtab *tab, sqlite3_index_info *pIdxInfo){
  int ii;
  char *zQuery = 0;
  char *zCol = 0;
  char *zNew;
  int nArg = 0;
  const char *zSep = "WHERE";
  echo_vtab *pVtab = (echo_vtab *)tab;
  sqlite3_stmt *pStmt = 0;
  Tcl_Interp *interp = pVtab->interp;

  int nRow = 0;
  int useIdx = 0;
  int rc = SQLITE_OK;
  int useCost = 0;
  double cost = 0;
  int isIgnoreUsable = 0;
  if( FUNC0(interp, "echo_module_ignore_usable", TCL_GLOBAL_ONLY) ){
    isIgnoreUsable = 1;
  }

  if( FUNC5(pVtab, "xBestIndex") ){
    return SQLITE_ERROR;
  }

  /* Determine the number of rows in the table and store this value in local
  ** variable nRow. The 'estimated-cost' of the scan will be the number of
  ** rows in the table for a linear scan, or the log (base 2) of the 
  ** number of rows if the proposed scan uses an index.  
  */
  if( FUNC0(interp, "echo_module_cost", TCL_GLOBAL_ONLY) ){
    cost = FUNC2(FUNC0(interp, "echo_module_cost", TCL_GLOBAL_ONLY));
    useCost = 1;
  } else {
    zQuery = FUNC9("SELECT count(*) FROM %Q", pVtab->zTableName);
    if( !zQuery ){
      return SQLITE_NOMEM;
    }
    rc = FUNC10(pVtab->db, zQuery, -1, &pStmt, 0);
    FUNC8(zQuery);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    FUNC11(pStmt);
    nRow = FUNC6(pStmt, 0);
    rc = FUNC7(pStmt);
    if( rc!=SQLITE_OK ){
      return rc;
    }
  }

  zCol = FUNC3(pVtab, pIdxInfo);
  if( !zCol ) return SQLITE_NOMEM;
  zQuery = FUNC9("SELECT rowid%z FROM %Q", zCol, pVtab->zTableName);
  if( !zQuery ) return SQLITE_NOMEM;

  for(ii=0; ii<pIdxInfo->nConstraint; ii++){
    const struct sqlite3_index_constraint *pConstraint;
    struct sqlite3_index_constraint_usage *pUsage;
    int iCol;

    pConstraint = &pIdxInfo->aConstraint[ii];
    pUsage = &pIdxInfo->aConstraintUsage[ii];

    if( !isIgnoreUsable && !pConstraint->usable ) continue;

    iCol = pConstraint->iColumn;
    if( iCol<0 || pVtab->aIndex[iCol] ){
      char *zNewCol = iCol>=0 ? pVtab->aCol[iCol] : "rowid";
      char *zOp = 0;
      useIdx = 1;
      switch( pConstraint->op ){
        case SQLITE_INDEX_CONSTRAINT_EQ:
          zOp = "="; break;
        case SQLITE_INDEX_CONSTRAINT_LT:
          zOp = "<"; break;
        case SQLITE_INDEX_CONSTRAINT_GT:
          zOp = ">"; break;
        case SQLITE_INDEX_CONSTRAINT_LE:
          zOp = "<="; break;
        case SQLITE_INDEX_CONSTRAINT_GE:
          zOp = ">="; break;
        case SQLITE_INDEX_CONSTRAINT_MATCH:
          /* Purposely translate the MATCH operator into a LIKE, which
          ** will be used by the next block of code to construct a new
          ** query.  It should also be noted here that the next block
          ** of code requires the first letter of this operator to be
          ** in upper-case to trigger the special MATCH handling (i.e.
          ** wrapping the bound parameter with literal '%'s).
          */
          zOp = "LIKE"; break;
        case SQLITE_INDEX_CONSTRAINT_LIKE:
          zOp = "like"; break;
        case SQLITE_INDEX_CONSTRAINT_GLOB:
          zOp = "glob"; break;
        case SQLITE_INDEX_CONSTRAINT_REGEXP:
          zOp = "regexp"; break;
      }
      if( zOp ){
        if( zOp[0]=='L' ){
          zNew = FUNC9(" %s %s LIKE (SELECT '%%'||?||'%%')", 
              zSep, zNewCol);
        } else {
          zNew = FUNC9(" %s %s %s ?", zSep, zNewCol, zOp);
        }
        FUNC12(&zQuery, zNew, 1, &rc);
        zSep = "AND";
        pUsage->argvIndex = ++nArg;
        pUsage->omit = 1;
      }
    }
  }

  /* If there is only one term in the ORDER BY clause, and it is
  ** on a column that this virtual table has an index for, then consume 
  ** the ORDER BY clause.
  */
  if( pIdxInfo->nOrderBy==1 && (
        pIdxInfo->aOrderBy->iColumn<0 ||
        pVtab->aIndex[pIdxInfo->aOrderBy->iColumn]) ){
    int iCol = pIdxInfo->aOrderBy->iColumn;
    char *zNewCol = iCol>=0 ? pVtab->aCol[iCol] : "rowid";
    char *zDir = pIdxInfo->aOrderBy->desc?"DESC":"ASC";
    zNew = FUNC9(" ORDER BY %s %s", zNewCol, zDir);
    FUNC12(&zQuery, zNew, 1, &rc);
    pIdxInfo->orderByConsumed = 1;
  }

  FUNC1(pVtab->interp, "xBestIndex");;
  FUNC1(pVtab->interp, zQuery);

  if( !zQuery ){
    return rc;
  }
  pIdxInfo->idxNum = FUNC4(zQuery);
  pIdxInfo->idxStr = zQuery;
  pIdxInfo->needToFreeIdxStr = 1;
  if( useCost ){
    pIdxInfo->estimatedCost = cost;
  }else if( useIdx ){
    /* Approximation of log2(nRow). */
    for( ii=0; ii<(sizeof(int)*8)-1; ii++ ){
      if( nRow & (1<<ii) ){
        pIdxInfo->estimatedCost = (double)ii;
      }
    }
  }else{
    pIdxInfo->estimatedCost = (double)nRow;
  }
  return rc;
}