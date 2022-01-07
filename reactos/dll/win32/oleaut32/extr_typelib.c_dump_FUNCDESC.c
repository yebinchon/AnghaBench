
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cParams; int funckind; int invkind; int callconv; int elemdescFunc; int wFuncFlags; int cParamsOpt; int oVft; int * lprgelemdescParam; int memid; } ;
typedef TYPE_1__ FUNCDESC ;
 int MESSAGE (char*,...) ;
 int dump_ELEMDESC (int *) ;

__attribute__((used)) static void dump_FUNCDESC(const FUNCDESC *funcdesc) {
  int i;
  MESSAGE("memid is %08x\n",funcdesc->memid);
  for (i=0;i<funcdesc->cParams;i++) {
      MESSAGE("Param %d:\n",i);
      dump_ELEMDESC(funcdesc->lprgelemdescParam+i);
  }
  MESSAGE("\tfunckind: %d (",funcdesc->funckind);
  switch (funcdesc->funckind) {
  case 132: MESSAGE("virtual");break;
  case 134: MESSAGE("pure virtual");break;
  case 135: MESSAGE("nonvirtual");break;
  case 133: MESSAGE("static");break;
  case 136: MESSAGE("dispatch");break;
  default: MESSAGE("unknown");break;
  }
  MESSAGE(")\n\tinvkind: %d (",funcdesc->invkind);
  switch (funcdesc->invkind) {
  case 131: MESSAGE("func");break;
  case 130: MESSAGE("property get");break;
  case 129: MESSAGE("property put");break;
  case 128: MESSAGE("property put ref");break;
  }
  MESSAGE(")\n\tcallconv: %d (",funcdesc->callconv);
  switch (funcdesc->callconv) {
  case 140: MESSAGE("cdecl");break;
  case 139: MESSAGE("pascal");break;
  case 138: MESSAGE("stdcall");break;
  case 137: MESSAGE("syscall");break;
  default:break;
  }
  MESSAGE(")\n\toVft: %d\n", funcdesc->oVft);
  MESSAGE("\tcParamsOpt: %d\n", funcdesc->cParamsOpt);
  MESSAGE("\twFlags: %x\n", funcdesc->wFuncFlags);

  MESSAGE("\telemdescFunc (return value type):\n");
  dump_ELEMDESC(&funcdesc->elemdescFunc);
}
