
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int strbuf_t ;
typedef int lua_State ;
struct TYPE_4__ {int encode_keep_buffer; int encode_buf; } ;
typedef TYPE_1__ json_config_t ;


 int json_append_data (int *,TYPE_1__*,int ,int *) ;
 TYPE_1__* json_fetch_config (int *) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_gettop (int *) ;
 int lua_pushlstring (int *,char*,int) ;
 int strbuf_free (int *) ;
 int strbuf_init (int *,int ) ;
 int strbuf_reset (int *) ;
 char* strbuf_string (int *,int*) ;

__attribute__((used)) static int json_encode(lua_State *l)
{
    json_config_t *cfg = json_fetch_config(l);
    strbuf_t local_encode_buf;
    strbuf_t *encode_buf;
    char *json;
    int len;

    luaL_argcheck(l, lua_gettop(l) == 1, 1, "expected 1 argument");

    if (!cfg->encode_keep_buffer) {

        encode_buf = &local_encode_buf;
        strbuf_init(encode_buf, 0);
    } else {

        encode_buf = &cfg->encode_buf;
        strbuf_reset(encode_buf);
    }

    json_append_data(l, cfg, 0, encode_buf);
    json = strbuf_string(encode_buf, &len);

    lua_pushlstring(l, json, len);

    if (!cfg->encode_keep_buffer)
        strbuf_free(encode_buf);

    return 1;
}
