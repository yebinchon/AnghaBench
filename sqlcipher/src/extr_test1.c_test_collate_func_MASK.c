#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
#define  SQLITE_UTF16BE 130 
#define  SQLITE_UTF16LE 129 
#define  SQLITE_UTF8 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pTestCollateInterp ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,void const*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(
  void *pCtx, 
  int nA, const void *zA,
  int nB, const void *zB
){
  Tcl_Interp *i = pTestCollateInterp;
  int encin = FUNC0(pCtx);
  int res;
  int n;

  sqlite3_value *pVal;
  Tcl_Obj *pX;

  pX = FUNC7("test_collate", -1);
  FUNC5(pX);

  switch( encin ){
    case SQLITE_UTF8:
      FUNC6(i,pX,FUNC7("UTF-8",-1));
      break;
    case SQLITE_UTF16LE:
      FUNC6(i,pX,FUNC7("UTF-16LE",-1));
      break;
    case SQLITE_UTF16BE:
      FUNC6(i,pX,FUNC7("UTF-16BE",-1));
      break;
    default:
      FUNC8(0);
  }

  FUNC9();
  pVal = FUNC12(0);
  if( pVal ){
    FUNC13(pVal, nA, zA, encin, SQLITE_STATIC);
    n = FUNC14(pVal);
    FUNC6(i,pX,
        FUNC7((char*)FUNC15(pVal),n));
    FUNC13(pVal, nB, zB, encin, SQLITE_STATIC);
    n = FUNC14(pVal);
    FUNC6(i,pX,
        FUNC7((char*)FUNC15(pVal),n));
    FUNC11(pVal);
  }
  FUNC10();

  FUNC2(i, pX, 0);
  FUNC1(pX);
  FUNC3(i, FUNC4(i), &res);
  return res;
}