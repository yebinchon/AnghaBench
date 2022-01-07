
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ top; scalar_t__ base; } ;
typedef TYPE_1__ lua_State ;


 int LJ_ERR_RDRSTR ;
 int UNUSED (void*) ;
 int copyTV (TYPE_1__*,scalar_t__,scalar_t__) ;
 int lj_err_caller (TYPE_1__*,int ) ;
 int luaL_checkstack (TYPE_1__*,int,char*) ;
 int lua_call (TYPE_1__*,int ,int) ;
 char const* lua_tolstring (TYPE_1__*,int,size_t*) ;
 scalar_t__ tvisnil (scalar_t__) ;
 scalar_t__ tvisnumber (scalar_t__) ;
 scalar_t__ tvisstr (scalar_t__) ;

__attribute__((used)) static const char *reader_func(lua_State *L, void *ud, size_t *size)
{
  UNUSED(ud);
  luaL_checkstack(L, 2, "too many nested functions");
  copyTV(L, L->top++, L->base);
  lua_call(L, 0, 1);
  L->top--;
  if (tvisnil(L->top)) {
    *size = 0;
    return ((void*)0);
  } else if (tvisstr(L->top) || tvisnumber(L->top)) {
    copyTV(L, L->base+4, L->top);
    return lua_tolstring(L, 5, size);
  } else {
    lj_err_caller(L, LJ_ERR_RDRSTR);
    return ((void*)0);
  }
}
