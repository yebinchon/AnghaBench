
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_7__ {int i_query; char** ppsz_query; int lock; int cond; int psz_filename; int * L; } ;
typedef TYPE_2__ services_discovery_sys_t ;
typedef int lua_State ;


 int DoSearch (TYPE_1__*,char*) ;
 int LUA_GCCOLLECT ;
 int TAB_ERASE (int,char**,int) ;
 int free (char*) ;
 int lua_gc (int *,int ,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_isfunction (int *,int ) ;
 scalar_t__ lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_tostring (int *,int ) ;
 int msg_Dbg (TYPE_1__*,char*,int ) ;
 int msg_Err (TYPE_1__*,char*,int ,int ) ;
 int mutex_cleanup_push (int *) ;
 int vlc_assert_unreachable () ;
 int vlc_cleanup_pop () ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void* Run( void *data )
{
    services_discovery_t *p_sd = ( services_discovery_t * )data;
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    lua_State *L = p_sys->L;

    int cancel = vlc_savecancel();

    lua_getglobal( L, "main" );
    if( !lua_isfunction( L, lua_gettop( L ) ) || lua_pcall( L, 0, 1, 0 ) )
    {
        msg_Err( p_sd, "Error while running script %s, "
                  "function main(): %s", p_sys->psz_filename,
                  lua_tostring( L, lua_gettop( L ) ) );
        lua_pop( L, 1 );
        vlc_restorecancel( cancel );
        return ((void*)0);
    }
    msg_Dbg( p_sd, "LuaSD script loaded: %s", p_sys->psz_filename );



    lua_gc( L, LUA_GCCOLLECT, 0 );

    vlc_restorecancel( cancel );


    vlc_mutex_lock( &p_sys->lock );
    mutex_cleanup_push( &p_sys->lock );
    for( ;; )
    {

        if( !p_sys->i_query )
        {
            vlc_cond_wait( &p_sys->cond, &p_sys->lock );
            continue;
        }


        char *psz_query = p_sys->ppsz_query[p_sys->i_query - 1];
        TAB_ERASE(p_sys->i_query, p_sys->ppsz_query, p_sys->i_query - 1);
        vlc_mutex_unlock( &p_sys->lock );

        cancel = vlc_savecancel();
        DoSearch( p_sd, psz_query );
        free( psz_query );


        lua_gc( L, LUA_GCCOLLECT, 0 );
        vlc_restorecancel( cancel );

        vlc_mutex_lock( &p_sys->lock );
    }
    vlc_cleanup_pop();
    vlc_assert_unreachable();
}
