
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int BLOCKSIZE ;
 int luaL_addlstring (int *,char*,int) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 int md5 (char*,int,char*) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static void decodestream (lua_State *L, const char *cypher, size_t lcypher,
                          char *block, int lblock) {
  luaL_Buffer b;
  luaL_buffinit(L, &b);
  while (lcypher > 0) {
    char code[BLOCKSIZE];
    int i;
    md5(block, lblock, code);
    for (i=0; i<BLOCKSIZE && lcypher > 0; i++, lcypher--)
      code[i] ^= *cypher++;
    luaL_addlstring(&b, code, i);
    memcpy(block, cypher-i, i);
  }
  luaL_pushresult(&b);
}
