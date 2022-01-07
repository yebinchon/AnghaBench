
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {int * tmname; } ;
struct TYPE_6__ {TYPE_1__* p; } ;
struct TYPE_5__ {int * code; } ;
typedef size_t TMS ;
typedef TYPE_1__ Proto ;
typedef int Instruction ;
typedef int CallInfo ;


 TYPE_4__* G (int *) ;
 int GETARG_A (int ) ;
 int GET_OPCODE (int ) ;
 size_t TM_ADD ;
 size_t TM_CONCAT ;
 size_t TM_DIV ;
 size_t TM_EQ ;
 size_t TM_INDEX ;
 size_t TM_LE ;
 size_t TM_LEN ;
 size_t TM_LT ;
 size_t TM_MOD ;
 size_t TM_MUL ;
 size_t TM_NEWINDEX ;
 size_t TM_POW ;
 size_t TM_SUB ;
 size_t TM_UNM ;
 TYPE_3__* ci_func (int *) ;
 int currentpc (int *) ;
 char const* getobjname (TYPE_1__*,int,int ,char const**) ;
 char* getstr (int ) ;

__attribute__((used)) static const char *getfuncname (lua_State *L, CallInfo *ci, const char **name) {
  TMS tm;
  Proto *p = ci_func(ci)->p;
  int pc = currentpc(ci);
  Instruction i = p->code[pc];
  switch (GET_OPCODE(i)) {
    case 146:
    case 130:
      return getobjname(p, pc, GETARG_A(i), name);
    case 129: {
      *name = "for iterator";
       return "for iterator";
    }

    case 134:
    case 141:
    case 142: tm = TM_INDEX; break;
    case 132:
    case 133: tm = TM_NEWINDEX; break;
    case 143: tm = TM_EQ; break;
    case 147: tm = TM_ADD; break;
    case 131: tm = TM_SUB; break;
    case 136: tm = TM_MUL; break;
    case 144: tm = TM_DIV; break;
    case 137: tm = TM_MOD; break;
    case 135: tm = TM_POW; break;
    case 128: tm = TM_UNM; break;
    case 139: tm = TM_LEN; break;
    case 138: tm = TM_LT; break;
    case 140: tm = TM_LE; break;
    case 145: tm = TM_CONCAT; break;
    default:
      return ((void*)0);
  }
  *name = getstr(G(L)->tmname[tm]);
  return "metamethod";
}
