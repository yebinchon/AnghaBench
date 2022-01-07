
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int ssize_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int * vlclua_get_vout_internal (int *) ;
 int vout_Release (int *) ;
 int vout_UnregisterSubpictureChannel (int *,int ) ;

__attribute__((used)) static int vlclua_spu_channel_clear( lua_State *L )
{
    ssize_t i_chan = luaL_checkinteger( L, 1 );
    vout_thread_t *p_vout = vlclua_get_vout_internal(L);
    if( !p_vout )
        return luaL_error( L, "Unable to find vout." );

    vout_UnregisterSubpictureChannel( p_vout, i_chan );
    vout_Release(p_vout);
    return 0;
}
