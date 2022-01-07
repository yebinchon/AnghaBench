
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* p_buffer ;
typedef int lua_State ;
typedef scalar_t__ lua_Number ;
struct TYPE_3__ {scalar_t__ birthday; scalar_t__ sent; scalar_t__ received; } ;


 int lua_pushnumber (int *,scalar_t__) ;
 scalar_t__ timeout_gettime () ;

int buffer_meth_getstats(lua_State *L, p_buffer buf) {
    lua_pushnumber(L, (lua_Number) buf->received);
    lua_pushnumber(L, (lua_Number) buf->sent);
    lua_pushnumber(L, timeout_gettime() - buf->birthday);
    return 3;
}
