
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static void set_field(lua_State *L, int index, char *field, int type) {
    (void) type;
    lua_setfield(L, index, field);
}
