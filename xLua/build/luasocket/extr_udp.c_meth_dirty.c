
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_udp ;
typedef int lua_State ;


 int auxiliar_checkgroup (int *,char*,int) ;
 int lua_pushboolean (int *,int ) ;

__attribute__((used)) static int meth_dirty(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkgroup(L, "udp{any}", 1);
    (void) udp;
    lua_pushboolean(L, 0);
    return 1;
}
