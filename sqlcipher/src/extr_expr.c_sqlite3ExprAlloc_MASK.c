#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_10__ {int n; int /*<<< orphan*/  z; } ;
typedef  TYPE_2__ Token ;
struct TYPE_9__ {int iValue; char* zToken; } ;
struct TYPE_11__ {int iAgg; int flags; int nHeight; TYPE_1__ u; scalar_t__ op; } ;
typedef  TYPE_3__ Expr ;

/* Variables and functions */
 int EP_IntValue ; 
 int EP_Leaf ; 
 int TK_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (char) ; 

Expr *FUNC7(
  sqlite3 *db,            /* Handle for sqlite3DbMallocRawNN() */
  int op,                 /* Expression opcode */
  const Token *pToken,    /* Token argument.  Might be NULL */
  int dequote             /* True to dequote */
){
  Expr *pNew;
  int nExtra = 0;
  int iValue = 0;

  FUNC0( db!=0 );
  if( pToken ){
    if( op!=TK_INTEGER || pToken->z==0
          || FUNC5(pToken->z, &iValue)==0 ){
      nExtra = pToken->n+1;
      FUNC0( iValue>=0 );
    }
  }
  pNew = FUNC3(db, sizeof(Expr)+nExtra);
  if( pNew ){
    FUNC2(pNew, 0, sizeof(Expr));
    pNew->op = (u8)op;
    pNew->iAgg = -1;
    if( pToken ){
      if( nExtra==0 ){
        pNew->flags |= EP_IntValue|EP_Leaf;
        pNew->u.iValue = iValue;
      }else{
        pNew->u.zToken = (char*)&pNew[1];
        FUNC0( pToken->z!=0 || pToken->n==0 );
        if( pToken->n ) FUNC1(pNew->u.zToken, pToken->z, pToken->n);
        pNew->u.zToken[pToken->n] = 0;
        if( dequote && FUNC6(pNew->u.zToken[0]) ){
          FUNC4(pNew);
        }
      }
    }
#if SQLITE_MAX_EXPR_DEPTH>0
    pNew->nHeight = 1;
#endif  
  }
  return pNew;
}