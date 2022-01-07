
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushcclosure (int *,int ,int) ;
 int protected_ ;

__attribute__((used)) static int global_protect(lua_State *L) {
    lua_pushcclosure(L, protected_, 1);
    return 1;
}
