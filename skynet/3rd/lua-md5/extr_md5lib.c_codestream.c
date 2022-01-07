
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
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void codestream (lua_State *L, const char *msg, size_t lmsg,
                                      char *block, int lblock) {
  luaL_Buffer b;
  luaL_buffinit(L, &b);
  while (lmsg > 0) {
    char code[BLOCKSIZE];
    int i;
    md5(block, lblock, code);
    for (i=0; i<BLOCKSIZE && lmsg > 0; i++, lmsg--)
      code[i] ^= *msg++;
    luaL_addlstring(&b, code, i);
    memcpy(block, code, i);
  }
  luaL_pushresult(&b);
}
