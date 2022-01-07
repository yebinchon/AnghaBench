
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int mp_unpack_full (int *,int ,int ) ;

int mp_unpack(lua_State *L) {
    return mp_unpack_full(L, 0, 0);
}
