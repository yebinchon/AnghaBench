
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int vlc_tick_t ;
typedef int lua_State ;


 int VLC_TICK_FROM_SEC (int) ;
 int VOUT_SPU_CHANNEL_OSD ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaL_optinteger (int *,int,int ) ;
 char* luaL_optstring (int *,int,char*) ;
 int vlc_osd_position_from_string (char const*) ;
 int * vlclua_get_vout_internal (int *) ;
 int vout_OSDText (int *,int,int ,int ,char const*) ;
 int vout_Release (int *) ;

__attribute__((used)) static int vlclua_osd_message( lua_State *L )
{
    const char *psz_message = luaL_checkstring( L, 1 );
    int i_chan = (int)luaL_optinteger( L, 2, VOUT_SPU_CHANNEL_OSD );
    const char *psz_position = luaL_optstring( L, 3, "top-right" );
    vlc_tick_t duration = (vlc_tick_t)luaL_optinteger( L, 4, VLC_TICK_FROM_SEC(1));

    vout_thread_t *p_vout = vlclua_get_vout_internal(L);
    if( p_vout )
    {
        vout_OSDText( p_vout, i_chan, vlc_osd_position_from_string( psz_position ),
                      duration, psz_message );
        vout_Release( p_vout );
    }
    return 0;
}
