
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* zErrMsg; } ;
struct TYPE_8__ {TYPE_1__ base; int db; int pCmd; int * interp; } ;
typedef TYPE_2__ tcl_vtab ;
struct TYPE_9__ {int pStmt; } ;
typedef TYPE_3__ tcl_cursor ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
typedef TYPE_4__ sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int TCL_EVAL_GLOBAL ;
 int TCL_OK ;
 int Tcl_DecrRefCount (int *) ;
 int * Tcl_DuplicateObj (int ) ;
 int Tcl_EvalObjEx (int *,int *,int ) ;
 int * Tcl_GetObjResult (int *) ;
 char* Tcl_GetString (int *) ;
 char* Tcl_GetStringResult (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int *,int *,int *) ;
 int Tcl_ListObjGetElements (int *,int *,int*,int ***) ;
 int * Tcl_NewIntObj (int) ;
 int * Tcl_NewObj () ;
 int * Tcl_NewStringObj (char const*,int) ;
 char* sqlite3_errmsg (int ) ;
 void* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_prepare_v2 (int ,char const*,int,int *,int ) ;
 scalar_t__ sqlite3_stricmp (char*,char const*) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int tclNext (TYPE_4__*) ;

__attribute__((used)) static int tclFilter(
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

  pScript = Tcl_DuplicateObj(pTab->pCmd);
  Tcl_IncrRefCount(pScript);
  Tcl_ListObjAppendElement(interp, pScript, Tcl_NewStringObj("xFilter", -1));
  Tcl_ListObjAppendElement(interp, pScript, Tcl_NewIntObj(idxNum));
  if( idxStr ){
    Tcl_ListObjAppendElement(interp, pScript, Tcl_NewStringObj(idxStr, -1));
  }else{
    Tcl_ListObjAppendElement(interp, pScript, Tcl_NewStringObj("", -1));
  }

  pArg = Tcl_NewObj();
  Tcl_IncrRefCount(pArg);
  for(ii=0; ii<argc; ii++){
    const char *zVal = (const char*)sqlite3_value_text(argv[ii]);
    Tcl_Obj *pVal;
    if( zVal==0 ){
      pVal = Tcl_NewObj();
    }else{
      pVal = Tcl_NewStringObj(zVal, -1);
    }
    Tcl_ListObjAppendElement(interp, pArg, pVal);
  }
  Tcl_ListObjAppendElement(interp, pScript, pArg);
  Tcl_DecrRefCount(pArg);

  rc = Tcl_EvalObjEx(interp, pScript, TCL_EVAL_GLOBAL);
  if( rc!=TCL_OK ){
    const char *zErr = Tcl_GetStringResult(interp);
    rc = SQLITE_ERROR;
    pTab->base.zErrMsg = sqlite3_mprintf("%s", zErr);
  }else{






    Tcl_Obj *pRes = Tcl_GetObjResult(interp);
    Tcl_Obj **apElem = 0;
    int nElem;
    rc = Tcl_ListObjGetElements(interp, pRes, &nElem, &apElem);
    if( rc!=TCL_OK ){
      const char *zErr = Tcl_GetStringResult(interp);
      rc = SQLITE_ERROR;
      pTab->base.zErrMsg = sqlite3_mprintf("%s", zErr);
    }else{
      for(ii=0; rc==SQLITE_OK && ii<nElem; ii+=2){
        const char *zCmd = Tcl_GetString(apElem[ii]);
        Tcl_Obj *p = apElem[ii+1];
        if( sqlite3_stricmp("sql", zCmd)==0 ){
          const char *zSql = Tcl_GetString(p);
          rc = sqlite3_prepare_v2(pTab->db, zSql, -1, &pCsr->pStmt, 0);
          if( rc!=SQLITE_OK ){
            const char *zErr = sqlite3_errmsg(pTab->db);
            pTab->base.zErrMsg = sqlite3_mprintf("unexpected: %s", zErr);
          }
        }else{
          rc = SQLITE_ERROR;
          pTab->base.zErrMsg = sqlite3_mprintf("unexpected: %s", zCmd);
        }
      }
    }
  }

  if( rc==SQLITE_OK ){
    rc = tclNext(pVtabCursor);
  }
  return rc;
}
