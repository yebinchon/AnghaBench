
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* p_buffer ;
typedef int lua_State ;
typedef int lua_Number ;
struct TYPE_3__ {long received; long sent; scalar_t__ birthday; } ;


 scalar_t__ luaL_optnumber (int *,int,int ) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushnumber (int *,int) ;
 scalar_t__ lua_tonumber (int *,int) ;
 scalar_t__ timeout_gettime () ;

int buffer_meth_setstats(lua_State *L, p_buffer buf) {
    buf->received = (long) luaL_optnumber(L, 2, (lua_Number) buf->received);
    buf->sent = (long) luaL_optnumber(L, 3, (lua_Number) buf->sent);
    if (lua_isnumber(L, 4)) buf->birthday = timeout_gettime() - lua_tonumber(L, 4);
    lua_pushnumber(L, 1);
    return 1;
}
