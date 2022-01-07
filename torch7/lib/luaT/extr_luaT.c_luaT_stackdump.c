
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;





 char* luaT_typename (int *,int) ;
 int lua_gettop (int *) ;
 int lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_toboolean (int *,int) ;
 double lua_tonumber (int *,int) ;
 int lua_topointer (int *,int) ;
 char* lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 char* lua_typename (int *,int) ;
 int printf (char*,...) ;

void luaT_stackdump(lua_State *L)
{
  int i;
  const char *tname = ((void*)0);
  int top = lua_gettop(L);
  for(i = 1; i <= top; i++)
  {
    int t = lua_type(L, i);
    printf("%3d. ", i);
    switch(t)
    {
      case 130:
        printf("'%s'", lua_tostring(L,i));
        break;
      case 132:
        printf(lua_toboolean(L, i) ? "true" : "false");
        break;
      case 131:
        printf("%g", lua_tonumber(L,i));
        break;
      case 128:
        tname = luaT_typename(L, i);
        printf("userdata %p [%s]", lua_topointer(L, i), (tname ? tname : "not a Torch object"));
        break;
      case 10:
        tname = luaT_typename(L, i);
        printf("cdata %p [%s]", lua_topointer(L, i), (tname ? tname : "not a Torch object"));
        break;
      case 129:
        lua_pushvalue(L, i);
        lua_rawget(L, LUA_REGISTRYINDEX);
        if(lua_isstring(L, -1))
          tname = lua_tostring(L, -1);
        else
          tname = ((void*)0);
        lua_pop(L, 1);
        if(tname)
          printf("metatable [%s]", tname);
        else
        {
          tname = luaT_typename(L, i);
          printf("table %p [%s]", lua_topointer(L, i), (tname ? tname : "not a Torch object"));
        }
        break;
      default:
        printf("Lua object type: %s", lua_typename(L,t));
        break;
    }
    printf("\n");
  }
  printf("---------------------------------------------\n");
}
