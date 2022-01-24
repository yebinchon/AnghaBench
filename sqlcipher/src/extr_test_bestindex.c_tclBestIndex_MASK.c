#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* zErrMsg; } ;
struct TYPE_8__ {TYPE_2__ base; int /*<<< orphan*/  pCmd; int /*<<< orphan*/ * interp; } ;
typedef  TYPE_3__ tcl_vtab ;
typedef  scalar_t__ tRowcnt ;
struct sqlite3_index_orderby {int /*<<< orphan*/  desc; int /*<<< orphan*/  iColumn; } ;
struct sqlite3_index_constraint {int op; int /*<<< orphan*/  usable; int /*<<< orphan*/  iColumn; } ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_9__ {int nConstraint; int nOrderBy; int orderByConsumed; int idxNum; int needToFreeIdxStr; TYPE_1__* aConstraintUsage; scalar_t__ estimatedRows; void* idxStr; int /*<<< orphan*/  estimatedCost; int /*<<< orphan*/  colUsed; struct sqlite3_index_orderby* aOrderBy; struct sqlite3_index_constraint* aConstraint; } ;
typedef  TYPE_4__ sqlite3_index_info ;
typedef  scalar_t__ Tcl_WideInt ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_6__ {int omit; int /*<<< orphan*/  argvIndex; } ;

/* Variables and functions */
 int SQLITE_ERROR ; 
#define  SQLITE_INDEX_CONSTRAINT_EQ 141 
#define  SQLITE_INDEX_CONSTRAINT_GE 140 
#define  SQLITE_INDEX_CONSTRAINT_GLOB 139 
#define  SQLITE_INDEX_CONSTRAINT_GT 138 
#define  SQLITE_INDEX_CONSTRAINT_IS 137 
#define  SQLITE_INDEX_CONSTRAINT_ISNOT 136 
#define  SQLITE_INDEX_CONSTRAINT_ISNOTNULL 135 
#define  SQLITE_INDEX_CONSTRAINT_ISNULL 134 
#define  SQLITE_INDEX_CONSTRAINT_LE 133 
#define  SQLITE_INDEX_CONSTRAINT_LIKE 132 
#define  SQLITE_INDEX_CONSTRAINT_LT 131 
#define  SQLITE_INDEX_CONSTRAINT_MATCH 130 
#define  SQLITE_INDEX_CONSTRAINT_NE 129 
#define  SQLITE_INDEX_CONSTRAINT_REGEXP 128 
 int SQLITE_OK ; 
 int /*<<< orphan*/  TCL_EVAL_GLOBAL ; 
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char const* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 void* FUNC17 (char*,...) ; 
 scalar_t__ FUNC18 (char*,char const*) ; 

__attribute__((used)) static int FUNC19(sqlite3_vtab *tab, sqlite3_index_info *pIdxInfo){
  tcl_vtab *pTab = (tcl_vtab*)tab;
  Tcl_Interp *interp = pTab->interp;
  Tcl_Obj *pArg;
  Tcl_Obj *pScript;
  int ii;
  int rc = SQLITE_OK;

  pScript = FUNC1(pTab->pCmd);
  FUNC9(pScript);
  FUNC10(interp, pScript, FUNC14("xBestIndex", -1));

  pArg = FUNC13();
  FUNC9(pArg);
  for(ii=0; ii<pIdxInfo->nConstraint; ii++){
    struct sqlite3_index_constraint const *pCons = &pIdxInfo->aConstraint[ii];
    Tcl_Obj *pElem = FUNC13();
    const char *zOp = "?";

    FUNC9(pElem);

    switch( pCons->op ){
      case SQLITE_INDEX_CONSTRAINT_EQ:
        zOp = "eq"; break;
      case SQLITE_INDEX_CONSTRAINT_GT:
        zOp = "gt"; break;
      case SQLITE_INDEX_CONSTRAINT_LE:
        zOp = "le"; break;
      case SQLITE_INDEX_CONSTRAINT_LT:
        zOp = "lt"; break;
      case SQLITE_INDEX_CONSTRAINT_GE:
        zOp = "ge"; break;
      case SQLITE_INDEX_CONSTRAINT_MATCH:
        zOp = "match"; break;
      case SQLITE_INDEX_CONSTRAINT_LIKE:
        zOp = "like"; break;
      case SQLITE_INDEX_CONSTRAINT_GLOB:
        zOp = "glob"; break;
      case SQLITE_INDEX_CONSTRAINT_REGEXP:
        zOp = "regexp"; break;
      case SQLITE_INDEX_CONSTRAINT_NE:
        zOp = "ne"; break;
      case SQLITE_INDEX_CONSTRAINT_ISNOT:
        zOp = "isnot"; break;
      case SQLITE_INDEX_CONSTRAINT_ISNOTNULL:
        zOp = "isnotnull"; break;
      case SQLITE_INDEX_CONSTRAINT_ISNULL:
        zOp = "isnull"; break;
      case SQLITE_INDEX_CONSTRAINT_IS:
        zOp = "is"; break;
    }

    FUNC10(0, pElem, FUNC14("op", -1));
    FUNC10(0, pElem, FUNC14(zOp, -1));
    FUNC10(0, pElem, FUNC14("column", -1));
    FUNC10(0, pElem, FUNC12(pCons->iColumn));
    FUNC10(0, pElem, FUNC14("usable", -1));
    FUNC10(0, pElem, FUNC12(pCons->usable));

    FUNC10(0, pArg, pElem);
    FUNC0(pElem);
  }

  FUNC10(0, pScript, pArg);
  FUNC0(pArg);

  pArg = FUNC13();
  FUNC9(pArg);
  for(ii=0; ii<pIdxInfo->nOrderBy; ii++){
    struct sqlite3_index_orderby const *pOrder = &pIdxInfo->aOrderBy[ii];
    Tcl_Obj *pElem = FUNC13();
    FUNC9(pElem);

    FUNC10(0, pElem, FUNC14("column", -1));
    FUNC10(0, pElem, FUNC12(pOrder->iColumn));
    FUNC10(0, pElem, FUNC14("desc", -1));
    FUNC10(0, pElem, FUNC12(pOrder->desc));

    FUNC10(0, pArg, pElem);
    FUNC0(pElem);
  }

  FUNC10(0, pScript, pArg);
  FUNC0(pArg);

  FUNC10(0, pScript, FUNC15(pIdxInfo->colUsed));

  rc = FUNC2(interp, pScript, TCL_EVAL_GLOBAL);
  FUNC0(pScript);
  if( rc!=TCL_OK ){
    const char *zErr = FUNC7(interp);
    rc = SQLITE_ERROR;
    pTab->base.zErrMsg = FUNC17("%s", zErr);
  }else{
    /* Analyze the scripts return value. The return value should be a tcl 
    ** list object with an even number of elements. The first element of each
    ** pair must be one of:
    ** 
    **   "orderby"          (value of orderByConsumed flag)
    **   "cost"             (value of estimatedCost field)
    **   "rows"             (value of estimatedRows field)
    **   "use"              (index of used constraint in aConstraint[])
    **   "idxnum"           (value of idxNum field)
    **   "idxstr"           (value of idxStr field)
    **   "omit"             (index of omitted constraint in aConstraint[])
    */
    Tcl_Obj *pRes = FUNC5(interp);
    Tcl_Obj **apElem = 0;
    int nElem;
    rc = FUNC11(interp, pRes, &nElem, &apElem);
    if( rc!=TCL_OK ){
      const char *zErr = FUNC7(interp);
      rc = SQLITE_ERROR;
      pTab->base.zErrMsg = FUNC17("%s", zErr);
    }else{
      int iArgv = 1;
      for(ii=0; rc==SQLITE_OK && ii<nElem; ii+=2){
        const char *zCmd = FUNC6(apElem[ii]);
        Tcl_Obj *p = apElem[ii+1];
        if( FUNC18("cost", zCmd)==0 ){
          rc = FUNC3(interp, p, &pIdxInfo->estimatedCost);
        }else
        if( FUNC18("orderby", zCmd)==0 ){
          rc = FUNC4(interp, p, &pIdxInfo->orderByConsumed);
        }else
        if( FUNC18("idxnum", zCmd)==0 ){
          rc = FUNC4(interp, p, &pIdxInfo->idxNum);
        }else
        if( FUNC18("idxstr", zCmd)==0 ){
          FUNC16(pIdxInfo->idxStr);
          pIdxInfo->idxStr = FUNC17("%s", FUNC6(p));
          pIdxInfo->needToFreeIdxStr = 1;
        }else
        if( FUNC18("rows", zCmd)==0 ){
          Tcl_WideInt x = 0;
          rc = FUNC8(interp, p, &x);
          pIdxInfo->estimatedRows = (tRowcnt)x;
        }else
        if( FUNC18("use", zCmd)==0 
         || FUNC18("omit", zCmd)==0 
        ){
          int iCons;
          rc = FUNC4(interp, p, &iCons);
          if( rc==SQLITE_OK ){
            if( iCons<0 || iCons>=pIdxInfo->nConstraint ){
              rc = SQLITE_ERROR;
              pTab->base.zErrMsg = FUNC17("unexpected: %d", iCons);
            }else{
              int bOmit = (zCmd[0]=='o' || zCmd[0]=='O');
              pIdxInfo->aConstraintUsage[iCons].argvIndex = iArgv++;
              pIdxInfo->aConstraintUsage[iCons].omit = bOmit;
            }
          }
        }else{
          rc = SQLITE_ERROR;
          pTab->base.zErrMsg = FUNC17("unexpected: %s", zCmd);
        }
        if( rc!=SQLITE_OK && pTab->base.zErrMsg==0 ){
          const char *zErr = FUNC7(interp);
          pTab->base.zErrMsg = FUNC17("%s", zErr);
        }
      }
    }
  }

  return rc;
}