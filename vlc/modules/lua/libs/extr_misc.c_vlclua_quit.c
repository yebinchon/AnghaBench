
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 int libvlc_Quit (int ) ;
 int vlc_object_instance (int *) ;
 int * vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_quit( lua_State *L )
{
    vlc_object_t *p_this = vlclua_get_this( L );


    libvlc_Quit( vlc_object_instance(p_this) );
    return 0;
}
