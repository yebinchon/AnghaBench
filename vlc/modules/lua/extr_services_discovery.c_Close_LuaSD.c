
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int i_query; int L; struct TYPE_6__* psz_filename; int lock; int cond; struct TYPE_6__** ppsz_query; int thread; } ;
typedef TYPE_2__ services_discovery_sys_t ;


 int TAB_CLEAN (int,TYPE_2__**) ;
 int free (TYPE_2__*) ;
 int lua_close (int ) ;
 int vlc_cancel (int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;

void Close_LuaSD( vlc_object_t *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t * )p_this;
    services_discovery_sys_t *p_sys = p_sd->p_sys;

    vlc_cancel( p_sys->thread );
    vlc_join( p_sys->thread, ((void*)0) );

    for( int i = 0; i < p_sys->i_query; i++ )
        free( p_sys->ppsz_query[i] );
    TAB_CLEAN( p_sys->i_query, p_sys->ppsz_query );

    vlc_cond_destroy( &p_sys->cond );
    vlc_mutex_destroy( &p_sys->lock );
    free( p_sys->psz_filename );
    lua_close( p_sys->L );
    free( p_sys );
}
