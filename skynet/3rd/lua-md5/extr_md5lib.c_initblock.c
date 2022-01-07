
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int BLOCKSIZE ;
 size_t MAXKEY ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int initblock (lua_State *L, const char *seed, int lseed, char *block) {
  size_t lkey;
  const char *key = luaL_checklstring(L, 2, &lkey);
  if (lkey > MAXKEY)
    luaL_error(L, "key too long (> %d)", MAXKEY);
  memset(block, 0, BLOCKSIZE);
  memcpy(block, seed, lseed);
  memcpy(block+BLOCKSIZE, key, lkey);
  return (int)lkey+BLOCKSIZE;
}
