
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 size_t BLOCKSIZE ;
 int MAXKEY ;
 int checkseed (int *) ;
 int codestream (int *,char const*,size_t,char*,int) ;
 int initblock (int *,char const*,size_t,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,size_t) ;
 int lua_concat (int *,int) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int crypt (lua_State *L) {
  size_t lmsg;
  const char *msg = luaL_checklstring(L, 1, &lmsg);
  size_t lseed;
  const char *seed;
  int lblock;
  char block[BLOCKSIZE+MAXKEY];
  checkseed(L);
  seed = luaL_checklstring(L, 3, &lseed);
  if (lseed > BLOCKSIZE)
    luaL_error(L, "seed too long (> %d)", BLOCKSIZE);

  block[0] = (char)lseed;
  memcpy(block+1, seed, lseed);
  lua_pushlstring(L, block, lseed+1);
  lblock = initblock(L, seed, lseed, block);
  codestream(L, msg, lmsg, block, lblock);
  lua_concat(L, 2);
  return 1;
}
