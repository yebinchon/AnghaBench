#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* zErrMsg; } ;
struct TYPE_8__ {TYPE_1__ base; int /*<<< orphan*/  db; int /*<<< orphan*/  pCmd; int /*<<< orphan*/ * interp; } ;
typedef  TYPE_2__ tcl_vtab ;
struct TYPE_9__ {int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_3__ tcl_cursor ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
typedef  TYPE_4__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  TCL_EVAL_GLOBAL ; 
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (char const*,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (char*,char const*) ; 
 int FUNC14 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*,char const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC18(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  tcl_cursor *pCsr = (tcl_cursor*)pVtabCursor;
  tcl_vtab *pTab = (tcl_vtab*)(pVtabCursor->pVtab);
  Tcl_Interp *interp = pTab->interp;
  Tcl_Obj *pScript;
  Tcl_Obj *pArg;
  int ii;
  int rc;

  pScript = FUNC1(pTab->pCmd);
  FUNC6(pScript);
  FUNC7(interp, pScript, FUNC11("xFilter", -1));
  FUNC7(interp, pScript, FUNC9(idxNum));
  if( idxStr ){
    FUNC7(interp, pScript, FUNC11(idxStr, -1));
  }else{
    FUNC7(interp, pScript, FUNC11("", -1));
  }

  pArg = FUNC10();
  FUNC6(pArg);
  for(ii=0; ii<argc; ii++){
    const char *zVal = (const char*)FUNC16(argv[ii]);
    Tcl_Obj *pVal;
    if( zVal==0 ){
      pVal = FUNC10();
    }else{
      pVal = FUNC11(zVal, -1);
    }
    FUNC7(interp, pArg, pVal);
  }
  FUNC7(interp, pScript, pArg);
  FUNC0(pArg);

  rc = FUNC2(interp, pScript, TCL_EVAL_GLOBAL);
  if( rc!=TCL_OK ){
    const char *zErr = FUNC5(interp);
    rc = SQLITE_ERROR;
    pTab->base.zErrMsg = FUNC13("%s", zErr);
  }else{
    /* Analyze the scripts return value. The return value should be a tcl 
    ** list object with an even number of elements. The first element of each
    ** pair must be one of:
    ** 
    **   "sql"          (SQL statement to return data)
    */
    Tcl_Obj *pRes = FUNC3(interp);
    Tcl_Obj **apElem = 0;
    int nElem;
    rc = FUNC8(interp, pRes, &nElem, &apElem);
    if( rc!=TCL_OK ){
      const char *zErr = FUNC5(interp);
      rc = SQLITE_ERROR;
      pTab->base.zErrMsg = FUNC13("%s", zErr);
    }else{
      for(ii=0; rc==SQLITE_OK && ii<nElem; ii+=2){
        const char *zCmd = FUNC4(apElem[ii]);
        Tcl_Obj *p = apElem[ii+1];
        if( FUNC15("sql", zCmd)==0 ){
          const char *zSql = FUNC4(p);
          rc = FUNC14(pTab->db, zSql, -1, &pCsr->pStmt, 0);
          if( rc!=SQLITE_OK ){
            const char *zErr = FUNC12(pTab->db);
            pTab->base.zErrMsg = FUNC13("unexpected: %s", zErr);
          }
        }else{
          rc = SQLITE_ERROR;
          pTab->base.zErrMsg = FUNC13("unexpected: %s", zCmd);
        }
      }
    }
  }

  if( rc==SQLITE_OK ){
    rc = FUNC17(pVtabCursor);
  }
  return rc;
}