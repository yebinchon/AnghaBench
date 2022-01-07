
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int byte ;
typedef int TTree ;


 char* luaL_checklstring (int *,int,size_t*) ;
 int * newcharset (int *) ;
 int setchar (int ,int ) ;
 int treebuffer (int *) ;

__attribute__((used)) static int lp_set (lua_State *L) {
  size_t l;
  const char *s = luaL_checklstring(L, 1, &l);
  TTree *tree = newcharset(L);
  while (l--) {
    setchar(treebuffer(tree), (byte)(*s));
    s++;
  }
  return 1;
}
