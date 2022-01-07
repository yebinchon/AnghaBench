
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;




 size_t luaL_checkoption (int *,int,char const*,char const**) ;

int inet_optsocktype(lua_State* L, int narg, const char* def)
{
    static const char* optname[] = { "stream", "dgram", ((void*)0) };
    static int optvalue[] = { 128, 129, 0 };

    return optvalue[luaL_checkoption(L, narg, def, optname)];
}
