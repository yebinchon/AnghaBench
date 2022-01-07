
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_arg {int type; int subtype; int extra; int * ud; } ;
typedef int lua_State ;






 int luaL_error (int *,char*,int) ;
 int lua_createtable (int *,int ,int) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnumber (int *,double) ;
 int lua_pushstring (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int sproto_name (int ) ;

__attribute__((used)) static void
push_default(const struct sproto_arg *args, int array) {
 lua_State *L = args->ud;
 switch(args->type) {
 case 130:
  if (args->extra)
   lua_pushnumber(L, 0.0);
  else
   lua_pushinteger(L, 0);
  break;
 case 131:
  lua_pushboolean(L, 0);
  break;
 case 129:
  lua_pushliteral(L, "");
  break;
 case 128:
  if (array) {
   lua_pushstring(L, sproto_name(args->subtype));
  } else {
   lua_createtable(L, 0, 1);
   lua_pushstring(L, sproto_name(args->subtype));
   lua_setfield(L, -2, "__type");
  }
  break;
 default:
  luaL_error(L, "Invalid type %d", args->type);
  break;
 }
}
