
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {char* member_0; int * member_2; int member_1; } ;
typedef TYPE_1__ table_field ;
typedef int lua_State ;
struct TYPE_6__ {int timeout; int status; int write; int read; int connect; } ;
typedef TYPE_2__ errors ;


 int LUA_TNUMBER ;
 int lua_newtable (int *) ;
 int lua_setfield (int *,int,char*) ;
 int set_fields (int *,int,TYPE_1__ const*) ;

void script_errors(lua_State *L, errors *errors) {
    uint64_t e[] = {
        errors->connect,
        errors->read,
        errors->write,
        errors->status,
        errors->timeout
    };
    const table_field fields[] = {
        { "connect", LUA_TNUMBER, &e[0] },
        { "read", LUA_TNUMBER, &e[1] },
        { "write", LUA_TNUMBER, &e[2] },
        { "status", LUA_TNUMBER, &e[3] },
        { "timeout", LUA_TNUMBER, &e[4] },
        { ((void*)0), 0, ((void*)0) },
    };
    lua_newtable(L);
    set_fields(L, 2, fields);
    lua_setfield(L, 1, "errors");
}
