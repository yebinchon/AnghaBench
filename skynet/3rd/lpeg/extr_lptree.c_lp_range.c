
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int byte ;
typedef int TTree ;


 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_gettop (int *) ;
 int * newcharset (int *) ;
 int setchar (int ,int) ;
 int treebuffer (int *) ;

__attribute__((used)) static int lp_range (lua_State *L) {
  int arg;
  int top = lua_gettop(L);
  TTree *tree = newcharset(L);
  for (arg = 1; arg <= top; arg++) {
    int c;
    size_t l;
    const char *r = luaL_checklstring(L, arg, &l);
    luaL_argcheck(L, l == 2, arg, "range must have two characters");
    for (c = (byte)r[0]; c <= (byte)r[1]; c++)
      setchar(treebuffer(tree), c);
  }
  return 1;
}
