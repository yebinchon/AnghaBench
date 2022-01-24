#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* pOwner; } ;
typedef  TYPE_2__ Window ;
struct TYPE_12__ {TYPE_2__* pWin; } ;
struct TYPE_15__ {scalar_t__ op; int flags; TYPE_1__ y; } ;
struct TYPE_14__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int EP_Distinct ; 
 int /*<<< orphan*/  EP_WinFunc ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TK_FUNCTION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC5(Parse *pParse, Expr *p, Window *pWin){
  if( p ){
    FUNC2( p->op==TK_FUNCTION );
    /* This routine is only called for the parser.  If pWin was not
    ** allocated due to an OOM, then the parser would fail before ever
    ** invoking this routine */
    if( FUNC0(pWin) ){
      p->y.pWin = pWin;
      FUNC1(p, EP_WinFunc);
      pWin->pOwner = p;
      if( p->flags & EP_Distinct ){
        FUNC3(pParse,
           "DISTINCT is not supported for window functions");
      }
    }
  }else{
    FUNC4(pParse->db, pWin);
  }
}