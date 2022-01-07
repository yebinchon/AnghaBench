
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_9__ {int memerrmsg; } ;
typedef scalar_t__ StkId ;


 TYPE_6__* G (TYPE_1__*) ;


 int luaS_newliteral (TYPE_1__*,char*) ;
 int setobjs2s (TYPE_1__*,scalar_t__,scalar_t__) ;
 int setsvalue2s (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static void seterrorobj (lua_State *L, int errcode, StkId oldtop) {
  switch (errcode) {
    case 128: {
      setsvalue2s(L, oldtop, G(L)->memerrmsg);
      break;
    }
    case 129: {
      setsvalue2s(L, oldtop, luaS_newliteral(L, "error in error handling"));
      break;
    }
    default: {
      setobjs2s(L, oldtop, L->top - 1);
      break;
    }
  }
  L->top = oldtop + 1;
}
