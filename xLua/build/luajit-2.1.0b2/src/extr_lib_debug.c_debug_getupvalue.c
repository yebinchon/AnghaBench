
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int int32_t ;


 int copyTV (TYPE_1__*,scalar_t__,scalar_t__) ;
 int lj_lib_checkfunc (TYPE_1__*,int) ;
 int lj_lib_checkint (TYPE_1__*,int) ;
 char* lua_getupvalue (TYPE_1__*,int,int ) ;
 int lua_pushstring (TYPE_1__*,char const*) ;
 char* lua_setupvalue (TYPE_1__*,int,int ) ;

__attribute__((used)) static int debug_getupvalue(lua_State *L, int get)
{
  int32_t n = lj_lib_checkint(L, 2);
  const char *name;
  lj_lib_checkfunc(L, 1);
  name = get ? lua_getupvalue(L, 1, n) : lua_setupvalue(L, 1, n);
  if (name) {
    lua_pushstring(L, name);
    if (!get) return 1;
    copyTV(L, L->top, L->top-2);
    L->top++;
    return 2;
  }
  return 0;
}
