
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_6__ {int * L; int cap; } ;
typedef TYPE_1__ CapState ;




 int captype (int ) ;
 int luaL_addvalue (int *) ;
 int luaL_error (int *,char*,char const*,int ) ;
 int luaL_typename (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;
 int pushcapture (TYPE_1__*) ;
 int stringcap (int *,TYPE_1__*) ;
 int substcap (int *,TYPE_1__*) ;

__attribute__((used)) static int addonestring (luaL_Buffer *b, CapState *cs, const char *what) {
  switch (captype(cs->cap)) {
    case 129:
      stringcap(b, cs);
      return 1;
    case 128:
      substcap(b, cs);
      return 1;
    default: {
      lua_State *L = cs->L;
      int n = pushcapture(cs);
      if (n > 0) {
        if (n > 1) lua_pop(L, n - 1);
        if (!lua_isstring(L, -1))
          luaL_error(L, "invalid %s value (a %s)", what, luaL_typename(L, -1));
        luaL_addvalue(b);
      }
      return n;
    }
  }
}
