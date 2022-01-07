
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* p_timeout ;
typedef int lua_State ;
struct TYPE_3__ {double block; double total; } ;


 int luaL_argcheck (int *,int ,int,char*) ;
 double luaL_optnumber (int *,int,int) ;
 char* luaL_optstring (int *,int,char*) ;
 int lua_pushnumber (int *,int) ;

int timeout_meth_settimeout(lua_State *L, p_timeout tm) {
    double t = luaL_optnumber(L, 2, -1);
    const char *mode = luaL_optstring(L, 3, "b");
    switch (*mode) {
        case 'b':
            tm->block = t;
            break;
        case 'r': case 't':
            tm->total = t;
            break;
        default:
            luaL_argcheck(L, 0, 3, "invalid timeout mode");
            break;
    }
    lua_pushnumber(L, 1);
    return 1;
}
