
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Tcl_Obj ;
typedef int Tcl_Event ;
struct TYPE_5__ {int proc; scalar_t__ nextPtr; } ;
struct TYPE_7__ {char* zScript; int interp; TYPE_1__ base; } ;
struct TYPE_6__ {int parent; int interp; } ;
typedef TYPE_2__ SqlThread ;
typedef TYPE_3__ EvalEvent ;


 int TCL_QUEUE_TAIL ;
 char* Tcl_GetStringFromObj (int *,int*) ;
 int Tcl_ThreadAlert (int ) ;
 int Tcl_ThreadQueueEvent (int ,int *,int ) ;
 scalar_t__ ckalloc (int) ;
 int memcpy (char*,char*,int) ;
 int tclScriptEvent ;

__attribute__((used)) static void postToParent(SqlThread *p, Tcl_Obj *pScript){
  EvalEvent *pEvent;
  char *zMsg;
  int nMsg;

  zMsg = Tcl_GetStringFromObj(pScript, &nMsg);
  pEvent = (EvalEvent *)ckalloc(sizeof(EvalEvent)+nMsg+1);
  pEvent->base.nextPtr = 0;
  pEvent->base.proc = tclScriptEvent;
  pEvent->zScript = (char *)&pEvent[1];
  memcpy(pEvent->zScript, zMsg, nMsg+1);
  pEvent->interp = p->interp;

  Tcl_ThreadQueueEvent(p->parent, (Tcl_Event *)pEvent, TCL_QUEUE_TAIL);
  Tcl_ThreadAlert(p->parent);
}
