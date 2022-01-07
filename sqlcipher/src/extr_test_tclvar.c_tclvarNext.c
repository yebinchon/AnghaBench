
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * interp; } ;
typedef TYPE_1__ tclvar_vtab ;
struct TYPE_7__ {int i1; int pList1; } ;
typedef TYPE_2__ tclvar_cursor ;
struct TYPE_8__ {scalar_t__ pVtab; } ;
typedef TYPE_3__ sqlite3_vtab_cursor ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;


 int Tcl_ListObjIndex (int ,int ,int,int **) ;
 int Tcl_ListObjLength (int ,int ,int*) ;
 int next2 (int *,TYPE_2__*,int *) ;

__attribute__((used)) static int tclvarNext(sqlite3_vtab_cursor *cur){
  Tcl_Obj *pObj;
  int n = 0;
  int ok = 0;

  tclvar_cursor *pCur = (tclvar_cursor *)cur;
  Tcl_Interp *interp = ((tclvar_vtab *)(cur->pVtab))->interp;

  Tcl_ListObjLength(0, pCur->pList1, &n);
  while( !ok && pCur->i1<n ){
    Tcl_ListObjIndex(0, pCur->pList1, pCur->i1, &pObj);
    ok = next2(interp, pCur, pObj);
    if( !ok ){
      pCur->i1++;
    }
  }

  return 0;
}
