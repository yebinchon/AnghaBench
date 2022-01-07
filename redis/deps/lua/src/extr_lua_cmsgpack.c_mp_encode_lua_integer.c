
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;
typedef int lua_Number ;
typedef scalar_t__ lua_Integer ;
typedef int int64_t ;


 scalar_t__ lua_tointeger (int *,int) ;
 int lua_tonumber (int *,int) ;
 int mp_encode_int (int *,int *,int ) ;

void mp_encode_lua_integer(lua_State *L, mp_buf *buf) {



    lua_Integer i = lua_tointeger(L,-1);

    mp_encode_int(L, buf, (int64_t)i);
}
