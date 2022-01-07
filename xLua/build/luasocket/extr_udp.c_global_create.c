
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int AF_INET ;
 int udp_create (int *,int ) ;

__attribute__((used)) static int global_create(lua_State *L) {
    return udp_create(L, AF_INET);
}
