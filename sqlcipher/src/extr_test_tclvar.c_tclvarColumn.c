
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * interp; } ;
typedef TYPE_1__ tclvar_vtab ;
struct TYPE_6__ {int i2; int pList2; int i1; int pList1; } ;
typedef TYPE_2__ tclvar_cursor ;
struct TYPE_7__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;


 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int TCL_GLOBAL_ONLY ;
 char const* Tcl_GetString (int *) ;
 int * Tcl_GetVar2Ex (int *,char const*,char const*,int ) ;
 int Tcl_ListObjIndex (int *,int ,int ,int **) ;
 int sqlite3_free ;
 char* sqlite3_mprintf (char*,char const*,char const*) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;

__attribute__((used)) static int tclvarColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  Tcl_Obj *p1;
  Tcl_Obj *p2;
  const char *z1;
  const char *z2 = "";
  tclvar_cursor *pCur = (tclvar_cursor*)cur;
  Tcl_Interp *interp = ((tclvar_vtab *)cur->pVtab)->interp;

  Tcl_ListObjIndex(interp, pCur->pList1, pCur->i1, &p1);
  Tcl_ListObjIndex(interp, pCur->pList2, pCur->i2, &p2);
  z1 = Tcl_GetString(p1);
  if( p2 ){
    z2 = Tcl_GetString(p2);
  }
  switch (i) {
    case 0: {
      sqlite3_result_text(ctx, z1, -1, SQLITE_TRANSIENT);
      break;
    }
    case 1: {
      sqlite3_result_text(ctx, z2, -1, SQLITE_TRANSIENT);
      break;
    }
    case 2: {
      Tcl_Obj *pVal = Tcl_GetVar2Ex(interp, z1, *z2?z2:0, TCL_GLOBAL_ONLY);
      sqlite3_result_text(ctx, Tcl_GetString(pVal), -1, SQLITE_TRANSIENT);
      break;
    }
    case 3: {
      char *z3;
      if( p2 ){
        z3 = sqlite3_mprintf("%s(%s)", z1, z2);
        sqlite3_result_text(ctx, z3, -1, sqlite3_free);
      }else{
        sqlite3_result_text(ctx, z1, -1, SQLITE_TRANSIENT);
      }
      break;
    }
  }
  return SQLITE_OK;
}
