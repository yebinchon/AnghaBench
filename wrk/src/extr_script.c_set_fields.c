
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ name; int * value; } ;
typedef TYPE_1__ table_field ;
typedef int lua_State ;
typedef int lua_Integer ;
typedef int lua_CFunction ;






 int lua_pushcfunction (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_setfield (int *,int,scalar_t__) ;

__attribute__((used)) static void set_fields(lua_State *L, int index, const table_field *fields) {
    for (int i = 0; fields[i].name; i++) {
        table_field f = fields[i];
        switch (f.value == ((void*)0) ? 130 : f.type) {
            case 131:
                lua_pushcfunction(L, (lua_CFunction) f.value);
                break;
            case 129:
                lua_pushinteger(L, *((lua_Integer *) f.value));
                break;
            case 128:
                lua_pushstring(L, (const char *) f.value);
                break;
            case 130:
                lua_pushnil(L);
                break;
        }
        lua_setfield(L, index, f.name);
    }
}
