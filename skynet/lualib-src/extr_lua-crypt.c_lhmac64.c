
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int hmac (int *,int *,int *) ;
 int pushqword (int *,int *) ;
 int read64 (int *,int *,int *) ;

__attribute__((used)) static int
lhmac64(lua_State *L) {
 uint32_t x[2], y[2];
 read64(L, x, y);
 uint32_t result[2];
 hmac(x,y,result);
 return pushqword(L, result);
}
