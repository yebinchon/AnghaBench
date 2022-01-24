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
struct TYPE_3__ {int cParams; int funckind; int invkind; int callconv; int /*<<< orphan*/  elemdescFunc; int /*<<< orphan*/  wFuncFlags; int /*<<< orphan*/  cParamsOpt; int /*<<< orphan*/  oVft; int /*<<< orphan*/ * lprgelemdescParam; int /*<<< orphan*/  memid; } ;
typedef  TYPE_1__ FUNCDESC ;

/* Variables and functions */
#define  CC_CDECL 140 
#define  CC_PASCAL 139 
#define  CC_STDCALL 138 
#define  CC_SYSCALL 137 
#define  FUNC_DISPATCH 136 
#define  FUNC_NONVIRTUAL 135 
#define  FUNC_PUREVIRTUAL 134 
#define  FUNC_STATIC 133 
#define  FUNC_VIRTUAL 132 
#define  INVOKE_FUNC 131 
#define  INVOKE_PROPERTYGET 130 
#define  INVOKE_PROPERTYPUT 129 
#define  INVOKE_PROPERTYPUTREF 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const FUNCDESC *funcdesc) {
  int i;
  FUNC0("memid is %08x\n",funcdesc->memid);
  for (i=0;i<funcdesc->cParams;i++) {
      FUNC0("Param %d:\n",i);
      FUNC1(funcdesc->lprgelemdescParam+i);
  }
  FUNC0("\tfunckind: %d (",funcdesc->funckind);
  switch (funcdesc->funckind) {
  case FUNC_VIRTUAL: FUNC0("virtual");break;
  case FUNC_PUREVIRTUAL: FUNC0("pure virtual");break;
  case FUNC_NONVIRTUAL: FUNC0("nonvirtual");break;
  case FUNC_STATIC: FUNC0("static");break;
  case FUNC_DISPATCH: FUNC0("dispatch");break;
  default: FUNC0("unknown");break;
  }
  FUNC0(")\n\tinvkind: %d (",funcdesc->invkind);
  switch (funcdesc->invkind) {
  case INVOKE_FUNC: FUNC0("func");break;
  case INVOKE_PROPERTYGET: FUNC0("property get");break;
  case INVOKE_PROPERTYPUT: FUNC0("property put");break;
  case INVOKE_PROPERTYPUTREF: FUNC0("property put ref");break;
  }
  FUNC0(")\n\tcallconv: %d (",funcdesc->callconv);
  switch (funcdesc->callconv) {
  case CC_CDECL: FUNC0("cdecl");break;
  case CC_PASCAL: FUNC0("pascal");break;
  case CC_STDCALL: FUNC0("stdcall");break;
  case CC_SYSCALL: FUNC0("syscall");break;
  default:break;
  }
  FUNC0(")\n\toVft: %d\n", funcdesc->oVft);
  FUNC0("\tcParamsOpt: %d\n", funcdesc->cParamsOpt);
  FUNC0("\twFlags: %x\n", funcdesc->wFuncFlags);

  FUNC0("\telemdescFunc (return value type):\n");
  FUNC1(&funcdesc->elemdescFunc);
}