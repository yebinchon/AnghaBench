
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 int luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int msg_Warn (int *,char*,int ) ;
 int * vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_msg_warn( lua_State *L )
{
    int i_top = lua_gettop( L );
    vlc_object_t *p_this = vlclua_get_this( L );
    int i;
    for( i = 1; i <= i_top; i++ )
        msg_Warn( p_this, "%s", luaL_checkstring( L, i ) );
    return 0;
}
