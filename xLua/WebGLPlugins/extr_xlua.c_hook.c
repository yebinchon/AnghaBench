
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int event; char* what; scalar_t__ linedefined; int short_src; int name; } ;
typedef TYPE_1__ lua_Debug ;


 int LUA_REGISTRYINDEX ;
 int hook_index ;
 int * hooknames ;
 int lua_call (int *,int,int ) ;
 int lua_getinfo (int *,char*,TYPE_1__*) ;
 int lua_pushfstring (int *,char*,int ,...) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawget (int *,int ) ;

__attribute__((used)) static void hook(lua_State *L, lua_Debug *ar)
{
 int event;

 lua_pushlightuserdata(L, &hook_index);
 lua_rawget(L, LUA_REGISTRYINDEX);

 event = ar->event;
 lua_pushstring(L, hooknames[event]);

 lua_getinfo(L, "nS", ar);
 if (*(ar->what) == 'C') {
  lua_pushfstring(L, "[?%s]", ar->name);
 } else {
  lua_pushfstring(L, "%s:%d", ar->short_src, ar->linedefined > 0 ? ar->linedefined : 0);
 }

 lua_call(L, 2, 0);
}
