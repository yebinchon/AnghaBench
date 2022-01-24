#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Event ;
struct TYPE_5__ {int /*<<< orphan*/  proc; scalar_t__ nextPtr; } ;
struct TYPE_7__ {char* zScript; int /*<<< orphan*/  interp; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  interp; } ;
typedef  TYPE_2__ SqlThread ;
typedef  TYPE_3__ EvalEvent ;

/* Variables and functions */
 int /*<<< orphan*/  TCL_QUEUE_TAIL ; 
 char* FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  tclScriptEvent ; 

__attribute__((used)) static void FUNC5(SqlThread *p, Tcl_Obj *pScript){
  EvalEvent *pEvent;
  char *zMsg;
  int nMsg;

  zMsg = FUNC0(pScript, &nMsg); 
  pEvent = (EvalEvent *)FUNC3(sizeof(EvalEvent)+nMsg+1);
  pEvent->base.nextPtr = 0;
  pEvent->base.proc = tclScriptEvent;
  pEvent->zScript = (char *)&pEvent[1];
  FUNC4(pEvent->zScript, zMsg, nMsg+1);
  pEvent->interp = p->interp;

  FUNC2(p->parent, (Tcl_Event *)pEvent, TCL_QUEUE_TAIL);
  FUNC1(p->parent);
}