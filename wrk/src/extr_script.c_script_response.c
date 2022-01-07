
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {char* buffer; char* cursor; } ;
typedef TYPE_1__ buffer ;


 char* buffer_pushlstring (int *,char*) ;
 int buffer_reset (TYPE_1__*) ;
 int lua_call (int *,int,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlstring (int *,char*,char*) ;
 int lua_rawset (int *,int) ;

void script_response(lua_State *L, int status, buffer *headers, buffer *body) {
    lua_getglobal(L, "response");
    lua_pushinteger(L, status);
    lua_newtable(L);

    for (char *c = headers->buffer; c < headers->cursor; ) {
        c = buffer_pushlstring(L, c);
        c = buffer_pushlstring(L, c);
        lua_rawset(L, -3);
    }

    lua_pushlstring(L, body->buffer, body->cursor - body->buffer);
    lua_call(L, 3, 0);

    buffer_reset(headers);
    buffer_reset(body);
}
