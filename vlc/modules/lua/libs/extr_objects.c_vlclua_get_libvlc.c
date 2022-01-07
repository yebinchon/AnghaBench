
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int libvlc_int_t ;


 int VLC_OBJECT (int *) ;
 int * vlc_object_instance (int ) ;
 int vlclua_get_this (int *) ;
 int vlclua_push_vlc_object (int *,int ,int *) ;

__attribute__((used)) static int vlclua_get_libvlc( lua_State *L )
{
    libvlc_int_t *p_libvlc = vlc_object_instance(vlclua_get_this( L ));
    vlclua_push_vlc_object(L, VLC_OBJECT(p_libvlc), ((void*)0));
    return 1;
}
