
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {char* member_0; int * member_2; int member_1; } ;
typedef TYPE_1__ table_field ;
typedef int lua_State ;


 int LUA_TNUMBER ;
 int lua_newtable (int *) ;
 int set_fields (int *,int,TYPE_1__ const*) ;

void script_summary(lua_State *L, uint64_t duration, uint64_t requests, uint64_t bytes) {
    const table_field fields[] = {
        { "duration", LUA_TNUMBER, &duration },
        { "requests", LUA_TNUMBER, &requests },
        { "bytes", LUA_TNUMBER, &bytes },
        { ((void*)0), 0, ((void*)0) },
    };
    lua_newtable(L);
    set_fields(L, 1, fields);
}
