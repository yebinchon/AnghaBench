
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_buf ;
typedef int lua_State ;


 int mp_encode_lua_table_as_array (int *,int *,int) ;
 int mp_encode_lua_table_as_map (int *,int *,int) ;
 scalar_t__ table_is_an_array (int *) ;

void mp_encode_lua_table(lua_State *L, mp_buf *buf, int level) {
    if (table_is_an_array(L))
        mp_encode_lua_table_as_array(L,buf,level);
    else
        mp_encode_lua_table_as_map(L,buf,level);
}
