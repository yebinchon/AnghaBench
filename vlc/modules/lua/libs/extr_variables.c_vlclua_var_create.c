
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_value_t ;
typedef int vlc_object_t ;
typedef int lua_State ;






 int VLC_SUCCESS ;
 int VLC_VAR_BOOL ;
 int VLC_VAR_FLOAT ;
 int VLC_VAR_STRING ;
 int VLC_VAR_VOID ;
 char* luaL_checkstring (int *,int) ;
 int ** luaL_checkudata (int *,int,char*) ;
 int lua_type (int *,int) ;
 int var_Create (int *,char const*,int) ;
 int var_Set (int *,char const*,int ) ;
 int vlclua_push_ret (int *,int) ;
 int vlclua_tovalue (int *,int,int *) ;

__attribute__((used)) static int vlclua_var_create( lua_State *L )
{
    int i_type, i_ret;
    vlc_object_t **pp_obj = luaL_checkudata( L, 1, "vlc_object" );
    const char *psz_var = luaL_checkstring( L, 2 );

    switch( lua_type( L, 3 ) )
    {
        case 129:
            i_type = VLC_VAR_FLOAT;
            break;
        case 131:
            i_type = VLC_VAR_BOOL;
            break;
        case 128:
            i_type = VLC_VAR_STRING;
            break;
        case 130:
            i_type = VLC_VAR_VOID;
            break;
        default:
            return 0;
    }

    if( ( i_ret = var_Create( *pp_obj, psz_var, i_type ) ) != VLC_SUCCESS )
        return vlclua_push_ret( L, i_ret );


    if( i_type == VLC_VAR_VOID )
        return 0;

    vlc_value_t val;
    vlclua_tovalue( L, i_type, &val );
    return vlclua_push_ret( L, var_Set( *pp_obj, psz_var, val ) );
}
