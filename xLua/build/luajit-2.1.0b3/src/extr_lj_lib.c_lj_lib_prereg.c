
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
typedef int lua_CFunction ;
struct TYPE_8__ {int env; } ;
struct TYPE_10__ {TYPE_1__ c; } ;
typedef int GCtab ;


 int LUA_REGISTRYINDEX ;
 TYPE_7__* funcV (scalar_t__) ;
 int luaL_findtable (TYPE_2__*,int ,char*,int) ;
 int lua_pushcfunction (TYPE_2__*,int ) ;
 int lua_setfield (TYPE_2__*,int,char const*) ;
 int obj2gco (int *) ;
 int setgcref (int ,int ) ;

void lj_lib_prereg(lua_State *L, const char *name, lua_CFunction f, GCtab *env)
{
  luaL_findtable(L, LUA_REGISTRYINDEX, "_PRELOAD", 4);
  lua_pushcfunction(L, f);

  setgcref(funcV(L->top-1)->c.env, obj2gco(env));
  lua_setfield(L, -2, name);
  L->top--;
}
