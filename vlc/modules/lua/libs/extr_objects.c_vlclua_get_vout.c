
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int lua_State ;


 int VLC_OBJECT (int *) ;
 int lua_pushnil (int *) ;
 int * vlclua_get_vout_internal (int *) ;
 int vlclua_push_vlc_object (int *,int ,int ) ;
 int vlclua_vout_release ;

__attribute__((used)) static int vlclua_get_vout( lua_State *L )
{
    vout_thread_t *vout = vlclua_get_vout_internal(L);
    if (vout)
        vlclua_push_vlc_object(L, VLC_OBJECT(vout), vlclua_vout_release);
    else
        lua_pushnil(L);
    return 1;
}
