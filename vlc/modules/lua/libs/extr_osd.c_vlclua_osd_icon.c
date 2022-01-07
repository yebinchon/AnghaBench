
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int lua_State ;


 int VOUT_SPU_CHANNEL_OSD ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*) ;
 scalar_t__ luaL_optinteger (int *,int,int ) ;
 int vlc_osd_icon_from_string (char const*) ;
 int * vlclua_get_vout_internal (int *) ;
 int vout_OSDIcon (int *,int,int) ;
 int vout_Release (int *) ;

__attribute__((used)) static int vlclua_osd_icon( lua_State *L )
{
    const char *psz_icon = luaL_checkstring( L, 1 );
    int i_icon = vlc_osd_icon_from_string( psz_icon );
    int i_chan = (int)luaL_optinteger( L, 2, VOUT_SPU_CHANNEL_OSD );
    if( !i_icon )
        return luaL_error( L, "\"%s\" is not a valid osd icon.", psz_icon );

    vout_thread_t *p_vout = vlclua_get_vout_internal(L);
    if( p_vout )
    {
        vout_OSDIcon( p_vout, i_chan, i_icon );
        vout_Release( p_vout );
    }
    return 0;
}
