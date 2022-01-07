
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char* member_0; int (* member_1 ) (int *) ;} ;
typedef TYPE_1__ luaL_Reg ;


 int CJSON_MODNAME ;
 int CJSON_VERSION ;
 int fpconv_init () ;
 int json_cfg_decode_invalid_numbers (int *) ;
 int json_cfg_decode_max_depth (int *) ;
 int json_cfg_encode_invalid_numbers (int *) ;
 int json_cfg_encode_keep_buffer (int *) ;
 int json_cfg_encode_max_depth (int *) ;
 int json_cfg_encode_number_precision (int *) ;
 int json_cfg_encode_sparse_array (int *) ;
 int json_create_config (int *) ;
 int json_decode (int *) ;
 int json_encode (int *) ;
 int luaL_setfuncs (int *,TYPE_1__*,int) ;
 int lua_newtable (int *) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushliteral (int *,int ) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static int lua_cjson_new(lua_State *l)
{
    luaL_Reg reg[] = {
        { "encode", json_encode },
        { "decode", json_decode },
        { "encode_sparse_array", json_cfg_encode_sparse_array },
        { "encode_max_depth", json_cfg_encode_max_depth },
        { "decode_max_depth", json_cfg_decode_max_depth },
        { "encode_number_precision", json_cfg_encode_number_precision },
        { "encode_keep_buffer", json_cfg_encode_keep_buffer },
        { "encode_invalid_numbers", json_cfg_encode_invalid_numbers },
        { "decode_invalid_numbers", json_cfg_decode_invalid_numbers },
        { "new", lua_cjson_new },
        { ((void*)0), ((void*)0) }
    };


    fpconv_init();


    lua_newtable(l);


    json_create_config(l);
    luaL_setfuncs(l, reg, 1);


    lua_pushlightuserdata(l, ((void*)0));
    lua_setfield(l, -2, "null");


    lua_pushliteral(l, CJSON_MODNAME);
    lua_setfield(l, -2, "_NAME");
    lua_pushliteral(l, CJSON_VERSION);
    lua_setfield(l, -2, "_VERSION");

    return 1;
}
