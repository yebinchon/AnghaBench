
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addsize (int *,size_t) ;
 char* luaL_buffinitsize (int *,int *,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int
lxor_str(lua_State *L) {
 size_t len1,len2;
 const char *s1 = luaL_checklstring(L,1,&len1);
 const char *s2 = luaL_checklstring(L,2,&len2);
 if (len2 == 0) {
  return luaL_error(L, "Can't xor empty string");
 }
 luaL_Buffer b;
 char * buffer = luaL_buffinitsize(L, &b, len1);
 int i;
 for (i=0;i<len1;i++) {
  buffer[i] = s1[i] ^ s2[i % len2];
 }
 luaL_addsize(&b, len1);
 luaL_pushresult(&b);
 return 1;
}
