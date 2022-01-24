#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_3__* pMWin; TYPE_5__* pParse; } ;
typedef  TYPE_4__ WindowCodeArg ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_15__ {int nMem; } ;
struct TYPE_13__ {TYPE_2__* pOrderBy; } ;
struct TYPE_12__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_11__ {scalar_t__ sortOrder; } ;
typedef  TYPE_5__ Parse ;

/* Variables and functions */
 int OP_Add ; 
#define  OP_Ge 129 
#define  OP_Gt 128 
 int OP_Le ; 
 int OP_Lt ; 
 int /*<<< orphan*/  OP_String8 ; 
 int OP_Subtract ; 
 int /*<<< orphan*/  P4_STATIC ; 
 int /*<<< orphan*/  SQLITE_NULLEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int,int) ; 

__attribute__((used)) static void FUNC12(
  WindowCodeArg *p, 
  int op,                          /* OP_Ge or OP_Gt */
  int csr1, 
  int regVal, 
  int csr2,
  int lbl
){
  Parse *pParse = p->pParse;
  Vdbe *v = FUNC4(pParse);
  int reg1 = FUNC3(pParse);
  int reg2 = FUNC3(pParse);
  int arith = OP_Add;
  int addrGe;

  int regString = ++pParse->nMem;

  FUNC2( op==OP_Ge || op==OP_Gt || op==OP_Le );
  FUNC2( p->pMWin->pOrderBy && p->pMWin->pOrderBy->nExpr==1 );
  if( p->pMWin->pOrderBy->a[0].sortOrder ){
    switch( op ){
      case OP_Ge: op = OP_Le; break;
      case OP_Gt: op = OP_Lt; break;
      default: FUNC2( op==OP_Le ); op = OP_Ge; break;
    }
    arith = OP_Subtract;
  }

  FUNC11(p, csr1, reg1);
  FUNC11(p, csr2, reg2);

  /* Check if the peer value for csr1 value is a text or blob by comparing
  ** it to the smallest possible string - ''. If it is, jump over the
  ** OP_Add or OP_Subtract operation and proceed directly to the comparison. */
  FUNC7(v, OP_String8, 0, regString, 0, "", P4_STATIC);
  addrGe = FUNC6(v, OP_Ge, regString, 0, reg1);
  FUNC0(v);
  FUNC6(v, arith, regVal, reg1, reg1);
  FUNC9(v, addrGe);
  FUNC6(v, op, reg2, lbl, reg1); FUNC0(v);
  FUNC8(v, SQLITE_NULLEQ);
  FUNC2( op==OP_Ge || op==OP_Gt || op==OP_Lt || op==OP_Le );
  FUNC10(op==OP_Ge); FUNC1(v, op==OP_Ge);
  FUNC10(op==OP_Lt); FUNC1(v, op==OP_Lt);
  FUNC10(op==OP_Le); FUNC1(v, op==OP_Le);
  FUNC10(op==OP_Gt); FUNC1(v, op==OP_Gt);

  FUNC5(pParse, reg1);
  FUNC5(pParse, reg2);
}