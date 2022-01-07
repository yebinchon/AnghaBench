
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_10__ {char const* psz_filename; } ;
typedef TYPE_2__ services_discovery_sys_t ;
struct TYPE_11__ {int i_capabilities; void* psz_url; void* psz_icon_url; void* psz_short_desc; } ;
typedef TYPE_3__ services_discovery_descriptor_t ;
typedef int lua_State ;


 int VLC_EGENERIC ;
 int VLC_OBJECT (TYPE_1__*) ;
 int VLC_SUCCESS ;
 char* luaL_checkstring (int *,int) ;
 int * luaL_newstate () ;
 void* luaL_strdupornull (int *,int) ;
 int lua_close (int *) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_isfunction (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 scalar_t__ lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 char const* lua_tostring (int *,int) ;
 int msg_Err (TYPE_1__*,char*,char const*,char const*) ;
 int msg_Warn (TYPE_1__*,char*,char const*,char const*) ;
 char** ppsz_capabilities ;
 int strcmp (char const*,char const*) ;
 scalar_t__ vlclua_dofile (int ,int *,char const*) ;

__attribute__((used)) static int FillDescriptor( services_discovery_t *p_sd,
                           services_discovery_descriptor_t *p_desc )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    int i_ret = VLC_EGENERIC;


    lua_State *L = luaL_newstate();

    if( vlclua_dofile( VLC_OBJECT(p_sd), L, p_sys->psz_filename ) )
    {
        msg_Err( p_sd, "Error loading script %s: %s", p_sys->psz_filename,
                 lua_tostring( L, -1 ) );
        goto end;
    }


    lua_getglobal( L, "descriptor" );
    if( !lua_isfunction( L, -1 ) || lua_pcall( L, 0, 1, 0 ) )
    {
        msg_Warn( p_sd, "Error getting the descriptor in '%s': %s",
                  p_sys->psz_filename, lua_tostring( L, -1 ) );
        goto end;
    }


    lua_getfield( L, -1, "short_description" );
    p_desc->psz_short_desc = luaL_strdupornull( L, -1 );
    lua_pop( L, 1 );

    lua_getfield( L, -1, "icon" );
    p_desc->psz_icon_url = luaL_strdupornull( L, -1 );
    lua_pop( L, 1 );

    lua_getfield( L, -1, "url" );
    p_desc->psz_url = luaL_strdupornull( L, -1 );
    lua_pop( L, 1 );

    lua_getfield( L, -1, "capabilities" );
    p_desc->i_capabilities = 0;
    if( lua_istable( L, -1 ) )
    {

        lua_pushnil( L );
        while( lua_next( L, -2 ) != 0 )
        {

            const char *psz_cap = luaL_checkstring( L, -1 );
            int i_cap = 0;
            const char *psz_iter;
            for( psz_iter = *ppsz_capabilities; psz_iter;
                 psz_iter = ppsz_capabilities[ ++i_cap ] )
            {
                if( !strcmp( psz_iter, psz_cap ) )
                {
                    p_desc->i_capabilities |= 1 << i_cap;
                    break;
                }
            }

            lua_pop( L, 1 );

            if( !psz_iter )
                msg_Warn( p_sd, "Services discovery capability '%s' unknown in "
                                "script '%s'", psz_cap, p_sys->psz_filename );
        }
    }

    lua_pop( L, 1 );
    i_ret = VLC_SUCCESS;

end:
    lua_close( L );
    return i_ret;

}
