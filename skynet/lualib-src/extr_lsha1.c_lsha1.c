
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;
typedef int SHA1_CTX ;


 int SHA1_DIGEST_SIZE ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int lua_pushlstring (int *,char const*,int) ;
 int sat_SHA1_Final (int *,int *) ;
 int sat_SHA1_Init (int *) ;
 int sat_SHA1_Update (int *,int const*,size_t) ;

int
lsha1(lua_State *L) {
 size_t sz = 0;
 const uint8_t * buffer = (const uint8_t *)luaL_checklstring(L, 1, &sz);
 uint8_t digest[SHA1_DIGEST_SIZE];
 SHA1_CTX ctx;
 sat_SHA1_Init(&ctx);
 sat_SHA1_Update(&ctx, buffer, sz);
 sat_SHA1_Final(&ctx, digest);
 lua_pushlstring(L, (const char *)digest, SHA1_DIGEST_SIZE);

 return 1;
}
