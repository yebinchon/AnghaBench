
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;



__attribute__((used)) static int vlclua_dummy_require( lua_State *L )
{
    (void) L;
    return 0;
}
