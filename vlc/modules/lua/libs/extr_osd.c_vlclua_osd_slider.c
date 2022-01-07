
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int lua_State ;


 int VOUT_SPU_CHANNEL_OSD ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*) ;
 scalar_t__ luaL_optinteger (int *,int,int ) ;
 int vlc_osd_slider_type_from_string (char const*) ;
 int * vlclua_get_vout_internal (int *) ;
 int vout_OSDSlider (int *,int,int,int) ;
 int vout_Release (int *) ;

__attribute__((used)) static int vlclua_osd_slider( lua_State *L )
{
    int i_position = luaL_checkinteger( L, 1 );
    const char *psz_type = luaL_checkstring( L, 2 );
    int i_type = vlc_osd_slider_type_from_string( psz_type );
    int i_chan = (int)luaL_optinteger( L, 3, VOUT_SPU_CHANNEL_OSD );
    if( !i_type )
        return luaL_error( L, "\"%s\" is not a valid slider type.",
                           psz_type );

    vout_thread_t *p_vout = vlclua_get_vout_internal(L);
    if( p_vout )
    {
        vout_OSDSlider( p_vout, i_chan, i_position, i_type );
        vout_Release( p_vout );
    }
    return 0;
}
