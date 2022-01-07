
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Stack ;


 int LUA_REGISTRYINDEX ;
 int MAXSTACKIDX ;
 int * getstackbase (int *,int) ;
 int luaL_error (int *,char*,int) ;
 int lua_getfield (int *,int ,int ) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_replace (int *,int ) ;
 int lua_tointeger (int *,int) ;
 int memcpy (int *,int *,int) ;
 int stackidx (int) ;

__attribute__((used)) static Stack *doublestack (lua_State *L, Stack **stacklimit, int ptop) {
  Stack *stack = getstackbase(L, ptop);
  Stack *newstack;
  int n = *stacklimit - stack;
  int max, newn;
  lua_getfield(L, LUA_REGISTRYINDEX, MAXSTACKIDX);
  max = lua_tointeger(L, -1);
  lua_pop(L, 1);
  if (n >= max)
    luaL_error(L, "backtrack stack overflow (current limit is %d)", max);
  newn = 2 * n;
  if (newn > max) newn = max;
  newstack = (Stack *)lua_newuserdata(L, newn * sizeof(Stack));
  memcpy(newstack, stack, n * sizeof(Stack));
  lua_replace(L, stackidx(ptop));
  *stacklimit = newstack + newn;
  return newstack + n;
}
