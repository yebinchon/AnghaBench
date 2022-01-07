
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ DWORD ;


 int GetConsole (int *) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int) ;
 scalar_t__ luaL_optinteger (int *,int,int ) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int vlclua_console_wait( lua_State *L )
{
    int i_timeout = (int)luaL_optinteger( L, 1, 0 );
    DWORD status = WaitForSingleObject( GetConsole( L ), i_timeout );
    lua_pushboolean( L, status == WAIT_OBJECT_0 );
    return 1;
}
