#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * interp; } ;
typedef  TYPE_1__ tclvar_vtab ;
struct TYPE_7__ {int /*<<< orphan*/ * pList1; scalar_t__ i2; scalar_t__ i1; int /*<<< orphan*/ * pList2; } ;
typedef  TYPE_2__ tclvar_cursor ;
struct TYPE_8__ {scalar_t__ pVtab; } ;
typedef  TYPE_3__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
#define  TCLVAR_NAME_EQ 132 
#define  TCLVAR_NAME_MATCH 131 
#define  TCLVAR_VALUE_GLOB 130 
#define  TCLVAR_VALUE_LIKE 129 
#define  TCLVAR_VALUE_REGEXP 128 
 int /*<<< orphan*/  TCL_EVAL_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  tclvar_cursor *pCur = (tclvar_cursor *)pVtabCursor;
  Tcl_Interp *interp = ((tclvar_vtab *)(pVtabCursor->pVtab))->interp;
  Tcl_Obj *p = FUNC5("tclvar_filter_cmd", -1);

  const char *zEq = "";
  const char *zMatch = "";
  const char *zGlob = "";
  const char *zRegexp = "";
  const char *zLike = "";
  int i;

  for(i=0; idxStr[i]; i++){
    switch( idxStr[i] ){
      case TCLVAR_NAME_EQ:
        zEq = (const char*)FUNC7(argv[i]);
        break;
      case TCLVAR_NAME_MATCH:
        zMatch = (const char*)FUNC7(argv[i]);
        break;
      case TCLVAR_VALUE_GLOB:
        zGlob = (const char*)FUNC7(argv[i]);
        break;
      case TCLVAR_VALUE_REGEXP:
        zRegexp = (const char*)FUNC7(argv[i]);
        break;
      case TCLVAR_VALUE_LIKE:
        zLike = (const char*)FUNC7(argv[i]);
        break;
      default:
        FUNC6( 0 );
    }
  }

  FUNC3(p);
  FUNC4(0, p, FUNC5(zEq, -1));
  FUNC4(0, p, FUNC5(zMatch, -1));
  FUNC4(0, p, FUNC5(zGlob, -1));
  FUNC4(0, p, FUNC5(zRegexp, -1));
  FUNC4(0, p, FUNC5(zLike, -1));

  FUNC1(interp, p, TCL_EVAL_GLOBAL);
  if( pCur->pList1 ){
    FUNC0(pCur->pList1);
  }
  if( pCur->pList2 ){
    FUNC0(pCur->pList2);
    pCur->pList2 = 0;
  }
  pCur->i1 = 0;
  pCur->i2 = 0;
  pCur->pList1 = FUNC2(interp);
  FUNC3(pCur->pList1);

  FUNC0(p);
  return FUNC8(pVtabCursor);
}