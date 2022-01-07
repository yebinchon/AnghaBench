
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int FILE ;


 size_t LUAL_BUFFERSIZE ;
 size_t fread (char*,int,size_t,int *) ;
 int luaL_addsize (int *,size_t) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_prepbuffer (int *) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static void read_all (lua_State *L, FILE *f) {
  size_t nr;
  luaL_Buffer b;
  luaL_buffinit(L, &b);
  do {
    char *p = luaL_prepbuffer(&b);
    nr = fread(p, sizeof(char), LUAL_BUFFERSIZE, f);
    luaL_addsize(&b, nr);
  } while (nr == LUAL_BUFFERSIZE);
  luaL_pushresult(&b);
}
