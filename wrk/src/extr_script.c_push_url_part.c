
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct http_parser_url {int field_set; TYPE_1__* field_data; } ;
typedef int lua_State ;
typedef enum http_parser_url_fields { ____Placeholder_http_parser_url_fields } http_parser_url_fields ;
struct TYPE_2__ {size_t off; size_t len; } ;




 int lua_pushlstring (int *,char*,size_t) ;
 int lua_pushnil (int *) ;

__attribute__((used)) static int push_url_part(lua_State *L, char *url, struct http_parser_url *parts, enum http_parser_url_fields field) {
    int type = parts->field_set & (1 << field) ? 128 : 129;
    uint16_t off, len;
    switch (type) {
        case 128:
            off = parts->field_data[field].off;
            len = parts->field_data[field].len;
            lua_pushlstring(L, &url[off], len);
            break;
        case 129:
            lua_pushnil(L);
    }
    return type;
}
