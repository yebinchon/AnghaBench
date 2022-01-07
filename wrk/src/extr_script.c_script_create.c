
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* member_0; char* member_2; int member_1; } ;
typedef TYPE_2__ table_field ;
struct http_parser_url {int field_set; TYPE_1__* field_data; } ;
typedef int lua_State ;
struct TYPE_4__ {size_t off; } ;


 int LUA_TFUNCTION ;
 int LUA_TSTRING ;
 int UF_HOST ;
 int UF_PATH ;
 int UF_PORT ;
 int UF_SCHEMA ;
 int addrlib ;
 int fprintf (int ,char*,char*,char const*) ;
 scalar_t__ luaL_dofile (int *,char*) ;
 int luaL_dostring (int *,char*) ;
 int luaL_newmetatable (int *,char*) ;
 int * luaL_newstate () ;
 int luaL_openlibs (int *) ;
 int luaL_register (int *,int *,int ) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushlstring (int *,char*,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_settable (int *,int) ;
 char* lua_tostring (int *,int) ;
 int push_url_part (int *,char*,struct http_parser_url*,int ) ;
 int script_parse_url (char*,struct http_parser_url*) ;
 char* script_wrk_connect ;
 char* script_wrk_lookup ;
 int set_field (int *,int,char*,int ) ;
 int set_fields (int *,int,TYPE_2__ const*) ;
 int statslib ;
 int stderr ;
 char* strchr (char*,char) ;
 int threadlib ;

lua_State *script_create(char *file, char *url, char **headers) {
    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    (void) luaL_dostring(L, "wrk = require \"wrk\"");

    luaL_newmetatable(L, "wrk.addr");
    luaL_register(L, ((void*)0), addrlib);
    luaL_newmetatable(L, "wrk.stats");
    luaL_register(L, ((void*)0), statslib);
    luaL_newmetatable(L, "wrk.thread");
    luaL_register(L, ((void*)0), threadlib);

    struct http_parser_url parts = {};
    script_parse_url(url, &parts);
    char *path = "/";

    if (parts.field_set & (1 << UF_PATH)) {
        path = &url[parts.field_data[UF_PATH].off];
    }

    const table_field fields[] = {
        { "lookup", LUA_TFUNCTION, script_wrk_lookup },
        { "connect", LUA_TFUNCTION, script_wrk_connect },
        { "path", LUA_TSTRING, path },
        { ((void*)0), 0, ((void*)0) },
    };

    lua_getglobal(L, "wrk");

    set_field(L, 4, "scheme", push_url_part(L, url, &parts, UF_SCHEMA));
    set_field(L, 4, "host", push_url_part(L, url, &parts, UF_HOST));
    set_field(L, 4, "port", push_url_part(L, url, &parts, UF_PORT));
    set_fields(L, 4, fields);

    lua_getfield(L, 4, "headers");
    for (char **h = headers; *h; h++) {
        char *p = strchr(*h, ':');
        if (p && p[1] == ' ') {
            lua_pushlstring(L, *h, p - *h);
            lua_pushstring(L, p + 2);
            lua_settable(L, 5);
        }
    }
    lua_pop(L, 5);

    if (file && luaL_dofile(L, file)) {
        const char *cause = lua_tostring(L, -1);
        fprintf(stderr, "%s: %s\n", file, cause);
    }

    return L;
}
