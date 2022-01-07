
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int psz_filename; int * L; } ;
typedef TYPE_2__ services_discovery_sys_t ;
typedef int lua_State ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_isfunction (int *,int ) ;
 scalar_t__ lua_pcall (int *,int,int ,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_tostring (int *,int ) ;
 int msg_Err (TYPE_1__*,char*,int ,...) ;

__attribute__((used)) static int DoSearch( services_discovery_t *p_sd, const char *psz_query )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    lua_State *L = p_sys->L;


    lua_getglobal( L, "search" );
    if( !lua_isfunction( L, lua_gettop( L ) ) )
    {
        msg_Err( p_sd, "The script '%s' does not define any 'search' function",
                 p_sys->psz_filename );
        lua_pop( L, 1 );
        return VLC_EGENERIC;
    }


    lua_pushstring( L, psz_query );


    if( lua_pcall( L, 1, 0, 0 ) )
    {
        msg_Err( p_sd, "Error while running the script '%s': %s",
                 p_sys->psz_filename, lua_tostring( L, lua_gettop( L ) ) );
        lua_pop( L, 1 );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
