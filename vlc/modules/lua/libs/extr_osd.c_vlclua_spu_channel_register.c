
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int ssize_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int ) ;
 int * vlclua_get_vout_internal (int *) ;
 int vout_RegisterSubpictureChannel (int *) ;
 int vout_Release (int *) ;

__attribute__((used)) static int vlclua_spu_channel_register( lua_State *L )
{
    vout_thread_t *p_vout = vlclua_get_vout_internal(L);
    if( !p_vout )
        return luaL_error( L, "Unable to find vout." );

    ssize_t i_chan = vout_RegisterSubpictureChannel( p_vout );
    vout_Release( p_vout );
    lua_pushinteger( L, i_chan );
    return 1;
}
