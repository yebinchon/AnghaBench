
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;
typedef scalar_t__ lua_Number ;


 scalar_t__ IS_INT64_EQUIVALENT (scalar_t__) ;
 scalar_t__ lua_tonumber (int *,int) ;
 int mp_encode_double (int *,int *,double) ;
 int mp_encode_lua_integer (int *,int *) ;

void mp_encode_lua_number(lua_State *L, mp_buf *buf) {
    lua_Number n = lua_tonumber(L,-1);

    if (IS_INT64_EQUIVALENT(n)) {
        mp_encode_lua_integer(L, buf);
    } else {
        mp_encode_double(L,buf,(double)n);
    }
}
