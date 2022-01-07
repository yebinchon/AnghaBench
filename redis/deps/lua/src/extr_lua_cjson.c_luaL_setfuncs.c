
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * name; int func; } ;
typedef TYPE_1__ luaL_Reg ;


 int luaL_checkstack (int *,int,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,int *) ;

__attribute__((used)) static void luaL_setfuncs (lua_State *l, const luaL_Reg *reg, int nup)
{
    int i;

    luaL_checkstack(l, nup, "too many upvalues");
    for (; reg->name != ((void*)0); reg++) {
        for (i = 0; i < nup; i++)
            lua_pushvalue(l, -nup);
        lua_pushcclosure(l, reg->func, nup);
        lua_setfield(l, -(nup + 2), reg->name);
    }
    lua_pop(l, nup);
}
