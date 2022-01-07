
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*,...) ;
 char* luaT_classrootname (char const*) ;
 int luaT_cmt__call ;
 int luaT_cmt__newindex ;
 int luaT_fullparentname (char const*,char*) ;
 int luaT_getinnerparent (int *,char const*) ;
 int luaT_mt__add ;
 int luaT_mt__call ;
 int luaT_mt__concat ;
 int luaT_mt__div ;
 int luaT_mt__eq ;
 int luaT_mt__index ;
 int luaT_mt__le ;
 int luaT_mt__len ;
 int luaT_mt__lt ;
 int luaT_mt__mod ;
 int luaT_mt__mul ;
 int luaT_mt__newindex ;
 int luaT_mt__pow ;
 int luaT_mt__sub ;
 int luaT_mt__tostring ;
 int luaT_mt__unm ;
 int luaT_pushmetatable (int *,char const*) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushglobaltable (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int) ;
 int lua_rawset (int *,int) ;
 int lua_setfield (int *,int,char const*) ;
 int lua_setmetatable (int *,int) ;
 int lua_settop (int *,int) ;

int luaT_lua_newmetatable(lua_State *L)
{

  const char* tname = luaL_checkstring(L, 1);
  char parent_name[256];
  int is_in_module = 0;


  lua_settop(L, 6);
  luaL_argcheck(L, lua_isnoneornil(L, 2) || lua_isstring(L, 2), 2, "parent class name or nil expected");
  luaL_argcheck(L, lua_isnoneornil(L, 3) || lua_isfunction(L, 3), 3, "constructor function or nil expected");
  luaL_argcheck(L, lua_isnoneornil(L, 4) || lua_isfunction(L, 4), 4, "destructor function or nil expected");
  luaL_argcheck(L, lua_isnoneornil(L, 5) || lua_isfunction(L, 5), 5, "factory function or nil expected");
  luaL_argcheck(L, lua_isnoneornil(L, 6) || lua_istable(L, 6), 6, "module table or nil expected");


  if(lua_isnoneornil(L, 6)) {
    lua_pop(L, 1);
    is_in_module = luaT_fullparentname(tname, parent_name);
    if (is_in_module)
      luaT_getinnerparent(L, tname);
    else
      lua_pushglobaltable(L);
  }

  if(!lua_istable(L, -1))
    luaL_error(L, "while creating metatable %s: bad argument #1 (%s is an invalid module name)", tname, parent_name);


  if(!luaT_pushmetatable(L, tname))
  {

    lua_newtable(L);


    lua_pushvalue(L, -1);
    lua_setfield(L, LUA_REGISTRYINDEX, tname);


    lua_pushvalue(L, -1);
    lua_pushstring(L, tname);
    lua_rawset(L, LUA_REGISTRYINDEX);


    lua_pushcfunction(L, luaT_mt__index);
    lua_setfield(L, -2, "__index");


    lua_pushcfunction(L, luaT_mt__newindex);
    lua_setfield(L, -2, "__newindex");


    lua_pushstring(L, tname);
    lua_setfield(L, -2, "__typename");


    lua_pushvalue(L, -1);
    lua_setfield(L, -2, "__metatable");


    lua_pushnumber(L, 1);
    lua_setfield(L, -2, "__version");


    lua_pushcfunction(L, luaT_mt__tostring);
    lua_setfield(L, -2, "__tostring");

    lua_pushcfunction(L, luaT_mt__add);
    lua_setfield(L, -2, "__add");

    lua_pushcfunction(L, luaT_mt__sub);
    lua_setfield(L, -2, "__sub");

    lua_pushcfunction(L, luaT_mt__mul);
    lua_setfield(L, -2, "__mul");

    lua_pushcfunction(L, luaT_mt__div);
    lua_setfield(L, -2, "__div");

    lua_pushcfunction(L, luaT_mt__mod);
    lua_setfield(L, -2, "__mod");

    lua_pushcfunction(L, luaT_mt__pow);
    lua_setfield(L, -2, "__pow");

    lua_pushcfunction(L, luaT_mt__unm);
    lua_setfield(L, -2, "__unm");

    lua_pushcfunction(L, luaT_mt__concat);
    lua_setfield(L, -2, "__concat");

    lua_pushcfunction(L, luaT_mt__len);
    lua_setfield(L, -2, "__len");

    lua_pushcfunction(L, luaT_mt__eq);
    lua_setfield(L, -2, "__eq");

    lua_pushcfunction(L, luaT_mt__lt);
    lua_setfield(L, -2, "__lt");

    lua_pushcfunction(L, luaT_mt__le);
    lua_setfield(L, -2, "__le");

    lua_pushcfunction(L, luaT_mt__call);
    lua_setfield(L, -2, "__call");
  }


  if(!lua_isnoneornil(L, 2))
  {
    if(lua_getmetatable(L, -1))
      luaL_error(L, "class %s has been already assigned a parent class\n", tname);
    else
    {
      const char* parent_tname = luaL_checkstring(L, 2);
      if(!luaT_pushmetatable(L, parent_tname))
        luaL_error(L, "bad argument #2 (invalid parent class name %s)", parent_tname);
      lua_setmetatable(L, -2);
    }
  }


  if(!lua_isnoneornil(L, 4))
  {

    lua_pushstring(L, "__gc");
    lua_rawget(L, -2);

    if(lua_isnil(L, -1))
    {
      lua_pop(L, 1);
      lua_pushstring(L, "__gc");
      lua_pushvalue(L, 4);
      lua_rawset(L, -3);
    }
    else
      luaL_error(L, "%s has been already assigned a destructor", tname);
  }


  if(!lua_isnoneornil(L, 5))
  {

    lua_pushstring(L, "__factory");
    lua_rawget(L, -2);

    if(lua_isnil(L, -1))
    {
      lua_pop(L, 1);
      lua_pushstring(L, "__factory");
      lua_pushvalue(L, 5);
      lua_rawset(L, -3);
    }
    else
      luaL_error(L, "%s has been already assigned a factory", tname);
  }


  lua_pushstring(L, "__constructor");
  lua_rawget(L, -2);
  if(lua_isnil(L, -1))
  {
    lua_pop(L, 1);
    lua_newtable(L);
    lua_newtable(L);

    lua_pushvalue(L, -3);
    lua_setfield(L, -2, "__index");

    lua_pushcfunction(L, luaT_cmt__newindex);
    lua_setfield(L, -2, "__newindex");

    lua_pushcfunction(L, luaT_cmt__call);
    lua_setfield(L, -2, "__call");

    lua_pushvalue(L, -3);
    lua_setfield(L, -2, "__metatable");

    lua_setmetatable(L, -2);


    lua_pushstring(L, "__constructor");
    lua_pushvalue(L, -2);
    lua_rawset(L, -4);
  }


  if(!lua_isnoneornil(L, 3))
  {

    lua_getmetatable(L, -1);


    lua_pushstring(L, "__new");
    lua_rawget(L, -2);

    if(lua_isnil(L, -1))
    {
      lua_pop(L, 1);
      lua_pushstring(L, "__new");
      lua_pushvalue(L, 3);
      lua_rawset(L, -3);


      lua_pushstring(L, "new");
      lua_pushvalue(L, 3);
      lua_rawset(L, -5);
    }
    else
      luaL_error(L, "%s has been already assigned a constructor", tname);


    lua_pop(L, 1);
  }


  lua_setfield(L, 6, luaT_classrootname(tname));

  return 1;
}
