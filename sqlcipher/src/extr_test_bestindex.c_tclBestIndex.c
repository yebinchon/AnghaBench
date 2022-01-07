
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* zErrMsg; } ;
struct TYPE_8__ {TYPE_2__ base; int pCmd; int * interp; } ;
typedef TYPE_3__ tcl_vtab ;
typedef scalar_t__ tRowcnt ;
struct sqlite3_index_orderby {int desc; int iColumn; } ;
struct sqlite3_index_constraint {int op; int usable; int iColumn; } ;
typedef int sqlite3_vtab ;
struct TYPE_9__ {int nConstraint; int nOrderBy; int orderByConsumed; int idxNum; int needToFreeIdxStr; TYPE_1__* aConstraintUsage; scalar_t__ estimatedRows; void* idxStr; int estimatedCost; int colUsed; struct sqlite3_index_orderby* aOrderBy; struct sqlite3_index_constraint* aConstraint; } ;
typedef TYPE_4__ sqlite3_index_info ;
typedef scalar_t__ Tcl_WideInt ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_6__ {int omit; int argvIndex; } ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int TCL_EVAL_GLOBAL ;
 int TCL_OK ;
 int Tcl_DecrRefCount (int *) ;
 int * Tcl_DuplicateObj (int ) ;
 int Tcl_EvalObjEx (int *,int *,int ) ;
 int Tcl_GetDoubleFromObj (int *,int *,int *) ;
 int Tcl_GetIntFromObj (int *,int *,int*) ;
 int * Tcl_GetObjResult (int *) ;
 char const* Tcl_GetString (int *) ;
 char* Tcl_GetStringResult (int *) ;
 int Tcl_GetWideIntFromObj (int *,int *,scalar_t__*) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int *,int *,int *) ;
 int Tcl_ListObjGetElements (int *,int *,int*,int ***) ;
 int * Tcl_NewIntObj (int ) ;
 int * Tcl_NewObj () ;
 int * Tcl_NewStringObj (char const*,int) ;
 int * Tcl_NewWideIntObj (int ) ;
 int sqlite3_free (void*) ;
 void* sqlite3_mprintf (char*,...) ;
 scalar_t__ sqlite3_stricmp (char*,char const*) ;

__attribute__((used)) static int tclBestIndex(sqlite3_vtab *tab, sqlite3_index_info *pIdxInfo){
  tcl_vtab *pTab = (tcl_vtab*)tab;
  Tcl_Interp *interp = pTab->interp;
  Tcl_Obj *pArg;
  Tcl_Obj *pScript;
  int ii;
  int rc = SQLITE_OK;

  pScript = Tcl_DuplicateObj(pTab->pCmd);
  Tcl_IncrRefCount(pScript);
  Tcl_ListObjAppendElement(interp, pScript, Tcl_NewStringObj("xBestIndex", -1));

  pArg = Tcl_NewObj();
  Tcl_IncrRefCount(pArg);
  for(ii=0; ii<pIdxInfo->nConstraint; ii++){
    struct sqlite3_index_constraint const *pCons = &pIdxInfo->aConstraint[ii];
    Tcl_Obj *pElem = Tcl_NewObj();
    const char *zOp = "?";

    Tcl_IncrRefCount(pElem);

    switch( pCons->op ){
      case 141:
        zOp = "eq"; break;
      case 138:
        zOp = "gt"; break;
      case 133:
        zOp = "le"; break;
      case 131:
        zOp = "lt"; break;
      case 140:
        zOp = "ge"; break;
      case 130:
        zOp = "match"; break;
      case 132:
        zOp = "like"; break;
      case 139:
        zOp = "glob"; break;
      case 128:
        zOp = "regexp"; break;
      case 129:
        zOp = "ne"; break;
      case 136:
        zOp = "isnot"; break;
      case 135:
        zOp = "isnotnull"; break;
      case 134:
        zOp = "isnull"; break;
      case 137:
        zOp = "is"; break;
    }

    Tcl_ListObjAppendElement(0, pElem, Tcl_NewStringObj("op", -1));
    Tcl_ListObjAppendElement(0, pElem, Tcl_NewStringObj(zOp, -1));
    Tcl_ListObjAppendElement(0, pElem, Tcl_NewStringObj("column", -1));
    Tcl_ListObjAppendElement(0, pElem, Tcl_NewIntObj(pCons->iColumn));
    Tcl_ListObjAppendElement(0, pElem, Tcl_NewStringObj("usable", -1));
    Tcl_ListObjAppendElement(0, pElem, Tcl_NewIntObj(pCons->usable));

    Tcl_ListObjAppendElement(0, pArg, pElem);
    Tcl_DecrRefCount(pElem);
  }

  Tcl_ListObjAppendElement(0, pScript, pArg);
  Tcl_DecrRefCount(pArg);

  pArg = Tcl_NewObj();
  Tcl_IncrRefCount(pArg);
  for(ii=0; ii<pIdxInfo->nOrderBy; ii++){
    struct sqlite3_index_orderby const *pOrder = &pIdxInfo->aOrderBy[ii];
    Tcl_Obj *pElem = Tcl_NewObj();
    Tcl_IncrRefCount(pElem);

    Tcl_ListObjAppendElement(0, pElem, Tcl_NewStringObj("column", -1));
    Tcl_ListObjAppendElement(0, pElem, Tcl_NewIntObj(pOrder->iColumn));
    Tcl_ListObjAppendElement(0, pElem, Tcl_NewStringObj("desc", -1));
    Tcl_ListObjAppendElement(0, pElem, Tcl_NewIntObj(pOrder->desc));

    Tcl_ListObjAppendElement(0, pArg, pElem);
    Tcl_DecrRefCount(pElem);
  }

  Tcl_ListObjAppendElement(0, pScript, pArg);
  Tcl_DecrRefCount(pArg);

  Tcl_ListObjAppendElement(0, pScript, Tcl_NewWideIntObj(pIdxInfo->colUsed));

  rc = Tcl_EvalObjEx(interp, pScript, TCL_EVAL_GLOBAL);
  Tcl_DecrRefCount(pScript);
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
      int iArgv = 1;
      for(ii=0; rc==SQLITE_OK && ii<nElem; ii+=2){
        const char *zCmd = Tcl_GetString(apElem[ii]);
        Tcl_Obj *p = apElem[ii+1];
        if( sqlite3_stricmp("cost", zCmd)==0 ){
          rc = Tcl_GetDoubleFromObj(interp, p, &pIdxInfo->estimatedCost);
        }else
        if( sqlite3_stricmp("orderby", zCmd)==0 ){
          rc = Tcl_GetIntFromObj(interp, p, &pIdxInfo->orderByConsumed);
        }else
        if( sqlite3_stricmp("idxnum", zCmd)==0 ){
          rc = Tcl_GetIntFromObj(interp, p, &pIdxInfo->idxNum);
        }else
        if( sqlite3_stricmp("idxstr", zCmd)==0 ){
          sqlite3_free(pIdxInfo->idxStr);
          pIdxInfo->idxStr = sqlite3_mprintf("%s", Tcl_GetString(p));
          pIdxInfo->needToFreeIdxStr = 1;
        }else
        if( sqlite3_stricmp("rows", zCmd)==0 ){
          Tcl_WideInt x = 0;
          rc = Tcl_GetWideIntFromObj(interp, p, &x);
          pIdxInfo->estimatedRows = (tRowcnt)x;
        }else
        if( sqlite3_stricmp("use", zCmd)==0
         || sqlite3_stricmp("omit", zCmd)==0
        ){
          int iCons;
          rc = Tcl_GetIntFromObj(interp, p, &iCons);
          if( rc==SQLITE_OK ){
            if( iCons<0 || iCons>=pIdxInfo->nConstraint ){
              rc = SQLITE_ERROR;
              pTab->base.zErrMsg = sqlite3_mprintf("unexpected: %d", iCons);
            }else{
              int bOmit = (zCmd[0]=='o' || zCmd[0]=='O');
              pIdxInfo->aConstraintUsage[iCons].argvIndex = iArgv++;
              pIdxInfo->aConstraintUsage[iCons].omit = bOmit;
            }
          }
        }else{
          rc = SQLITE_ERROR;
          pTab->base.zErrMsg = sqlite3_mprintf("unexpected: %s", zCmd);
        }
        if( rc!=SQLITE_OK && pTab->base.zErrMsg==0 ){
          const char *zErr = Tcl_GetStringResult(interp);
          pTab->base.zErrMsg = sqlite3_mprintf("%s", zErr);
        }
      }
    }
  }

  return rc;
}
