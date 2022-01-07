
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int GCproto ;


 int LUA_TFUNCTION ;
 int funcV (int *) ;
 int * funcproto (int ) ;
 scalar_t__ isluafunc (int ) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int * protoV (int *) ;
 scalar_t__ tvisfunc (int *) ;
 scalar_t__ tvisproto (int *) ;

__attribute__((used)) static GCproto *check_Lproto(lua_State *L, int nolua)
{
  TValue *o = L->base;
  if (L->top > o) {
    if (tvisproto(o)) {
      return protoV(o);
    } else if (tvisfunc(o)) {
      if (isluafunc(funcV(o)))
 return funcproto(funcV(o));
      else if (nolua)
 return ((void*)0);
    }
  }
  lj_err_argt(L, 1, LUA_TFUNCTION);
  return ((void*)0);
}
