
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int NB_PRESETS ;
 int asprintf (char**,char*,int) ;
 int free (char*) ;
 int lua_newtable (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int * preset_list_text ;

__attribute__((used)) static int vlclua_equalizer_get_presets( lua_State *L )
{
    lua_newtable( L );
    char *str;
    for( int i = 0 ; i < NB_PRESETS ; i++ )
    {
        lua_pushstring( L, preset_list_text[i] );
        if( asprintf( &str , "preset id=\"%d\"",i ) == -1 )
            return 0;
        lua_setfield( L , -2 , str );
        free(str);
    }
    return 1;
}
