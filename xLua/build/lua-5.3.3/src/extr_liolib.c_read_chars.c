
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int FILE ;


 size_t fread (char*,int,size_t,int *) ;
 int luaL_addsize (int *,size_t) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_prepbuffsize (int *,size_t) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int read_chars (lua_State *L, FILE *f, size_t n) {
  size_t nr;
  char *p;
  luaL_Buffer b;
  luaL_buffinit(L, &b);
  p = luaL_prepbuffsize(&b, n);
  nr = fread(p, sizeof(char), n, f);
  luaL_addsize(&b, nr);
  luaL_pushresult(&b);
  return (nr > 0);
}
