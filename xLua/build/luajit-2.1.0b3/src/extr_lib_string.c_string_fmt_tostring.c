
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
typedef int TValue ;
typedef int GCstr ;


 scalar_t__ LJ_LIKELY (int ) ;
 int MM_tostring ;
 int copyTV (TYPE_1__*,int *,int *) ;
 int * lj_meta_lookup (TYPE_1__*,int *,int ) ;
 int * lj_strfmt_obj (TYPE_1__*,int *) ;
 int lua_assert (int) ;
 int lua_call (TYPE_1__*,int,int) ;
 int * strV (int *) ;
 int tvisnil (int *) ;
 int tvisstr (int *) ;

__attribute__((used)) static GCstr *string_fmt_tostring(lua_State *L, int arg, int retry)
{
  TValue *o = L->base+arg-1;
  cTValue *mo;
  lua_assert(o < L->top);
  if (LJ_LIKELY(tvisstr(o)))
    return strV(o);
  if (retry != 2 && !tvisnil(mo = lj_meta_lookup(L, o, MM_tostring))) {
    copyTV(L, L->top++, mo);
    copyTV(L, L->top++, o);
    lua_call(L, 1, 1);
    copyTV(L, L->base+arg-1, --L->top);
    return ((void*)0);
  }
  return lj_strfmt_obj(L, o);
}
