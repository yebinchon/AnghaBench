#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ i2; int /*<<< orphan*/ * pList2; } ;
typedef  TYPE_1__ tclvar_cursor ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int /*<<< orphan*/  TCL_EVAL_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(Tcl_Interp *interp, tclvar_cursor *pCur, Tcl_Obj *pObj){
  Tcl_Obj *p;

  if( pObj ){
    if( !pCur->pList2 ){
      p = FUNC6("array names", -1);
      FUNC3(p);
      FUNC4(0, p, pObj);
      FUNC1(interp, p, TCL_EVAL_GLOBAL);
      FUNC0(p);
      pCur->pList2 = FUNC2(interp);
      FUNC3(pCur->pList2);
      FUNC7( pCur->i2==0 );
    }else{
      int n = 0;
      pCur->i2++;
      FUNC5(0, pCur->pList2, &n);
      if( pCur->i2>=n ){
        FUNC0(pCur->pList2);
        pCur->pList2 = 0;
        pCur->i2 = 0;
        return 0;
      }
    }
  }

  return 1;
}