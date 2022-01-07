
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * interp; } ;
typedef TYPE_1__ tclvar_vtab ;
struct TYPE_7__ {int * pList1; scalar_t__ i2; scalar_t__ i1; int * pList2; } ;
typedef TYPE_2__ tclvar_cursor ;
struct TYPE_8__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;







 int TCL_EVAL_GLOBAL ;
 int Tcl_DecrRefCount (int *) ;
 int Tcl_EvalObjEx (int *,int *,int ) ;
 int * Tcl_GetObjResult (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int ,int *,int *) ;
 int * Tcl_NewStringObj (char const*,int) ;
 int assert (int ) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int tclvarNext (TYPE_3__*) ;

__attribute__((used)) static int tclvarFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  tclvar_cursor *pCur = (tclvar_cursor *)pVtabCursor;
  Tcl_Interp *interp = ((tclvar_vtab *)(pVtabCursor->pVtab))->interp;
  Tcl_Obj *p = Tcl_NewStringObj("tclvar_filter_cmd", -1);

  const char *zEq = "";
  const char *zMatch = "";
  const char *zGlob = "";
  const char *zRegexp = "";
  const char *zLike = "";
  int i;

  for(i=0; idxStr[i]; i++){
    switch( idxStr[i] ){
      case 132:
        zEq = (const char*)sqlite3_value_text(argv[i]);
        break;
      case 131:
        zMatch = (const char*)sqlite3_value_text(argv[i]);
        break;
      case 130:
        zGlob = (const char*)sqlite3_value_text(argv[i]);
        break;
      case 128:
        zRegexp = (const char*)sqlite3_value_text(argv[i]);
        break;
      case 129:
        zLike = (const char*)sqlite3_value_text(argv[i]);
        break;
      default:
        assert( 0 );
    }
  }

  Tcl_IncrRefCount(p);
  Tcl_ListObjAppendElement(0, p, Tcl_NewStringObj(zEq, -1));
  Tcl_ListObjAppendElement(0, p, Tcl_NewStringObj(zMatch, -1));
  Tcl_ListObjAppendElement(0, p, Tcl_NewStringObj(zGlob, -1));
  Tcl_ListObjAppendElement(0, p, Tcl_NewStringObj(zRegexp, -1));
  Tcl_ListObjAppendElement(0, p, Tcl_NewStringObj(zLike, -1));

  Tcl_EvalObjEx(interp, p, TCL_EVAL_GLOBAL);
  if( pCur->pList1 ){
    Tcl_DecrRefCount(pCur->pList1);
  }
  if( pCur->pList2 ){
    Tcl_DecrRefCount(pCur->pList2);
    pCur->pList2 = 0;
  }
  pCur->i1 = 0;
  pCur->i2 = 0;
  pCur->pList1 = Tcl_GetObjResult(interp);
  Tcl_IncrRefCount(pCur->pList1);

  Tcl_DecrRefCount(p);
  return tclvarNext(pVtabCursor);
}
