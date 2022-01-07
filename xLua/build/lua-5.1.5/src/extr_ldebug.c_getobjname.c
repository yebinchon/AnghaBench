
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {TYPE_2__* p; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct TYPE_8__ {int * upvalues; int * k; } ;
typedef TYPE_2__ Proto ;
typedef int Instruction ;
typedef int CallInfo ;


 int GETARG_A (int ) ;
 int GETARG_B (int ) ;
 int GETARG_Bx (int ) ;
 int GETARG_C (int ) ;
 int GET_OPCODE (int ) ;





 TYPE_6__* ci_func (int *) ;
 int currentpc (int *,int *) ;
 char* getstr (int ) ;
 scalar_t__ isLua (int *) ;
 char* kname (TYPE_2__*,int) ;
 char* luaF_getlocalname (TYPE_2__*,int,int) ;
 int lua_assert (int) ;
 char* svalue (int *) ;
 int symbexec (TYPE_2__*,int,int) ;
 int ttisstring (int *) ;

__attribute__((used)) static const char *getobjname (lua_State *L, CallInfo *ci, int stackpos,
                               const char **name) {
  if (isLua(ci)) {
    Proto *p = ci_func(ci)->l.p;
    int pc = currentpc(L, ci);
    Instruction i;
    *name = luaF_getlocalname(p, stackpos+1, pc);
    if (*name)
      return "local";
    i = symbexec(p, pc, stackpos);
    lua_assert(pc != -1);
    switch (GET_OPCODE(i)) {
      case 132: {
        int g = GETARG_Bx(i);
        lua_assert(ttisstring(&p->k[g]));
        *name = svalue(&p->k[g]);
        return "global";
      }
      case 129: {
        int a = GETARG_A(i);
        int b = GETARG_B(i);
        if (b < a)
          return getobjname(L, ci, b, name);
        break;
      }
      case 131: {
        int k = GETARG_C(i);
        *name = kname(p, k);
        return "field";
      }
      case 130: {
        int u = GETARG_B(i);
        *name = p->upvalues ? getstr(p->upvalues[u]) : "?";
        return "upvalue";
      }
      case 128: {
        int k = GETARG_C(i);
        *name = kname(p, k);
        return "method";
      }
      default: break;
    }
  }
  return ((void*)0);
}
