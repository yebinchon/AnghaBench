
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int uint8_t ;
typedef int stream_t ;
typedef int lua_State ;


 int luaL_checkstring (int *,int) ;
 char* strdup (int ) ;
 int strlen (char*) ;
 int * vlc_stream_MemoryNew (int *,int *,int ,int) ;
 int * vlclua_get_this (int *) ;
 int vlclua_stream_new_inner (int *,int *) ;

__attribute__((used)) static int vlclua_memory_stream_new( lua_State *L )
{
    vlc_object_t * p_this = vlclua_get_this( L );

    char * psz_content = strdup( luaL_checkstring( L, 1 ) );
    stream_t *p_stream = vlc_stream_MemoryNew( p_this, (uint8_t *)psz_content, strlen( psz_content ), 0 );
    return vlclua_stream_new_inner( L, p_stream );
}
