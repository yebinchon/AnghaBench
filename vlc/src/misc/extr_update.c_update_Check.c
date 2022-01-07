
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_check; } ;
typedef TYPE_1__ update_t ;
struct TYPE_9__ {void (* pf_callback ) (void*,int) ;int thread; void* p_data; TYPE_1__* p_update; } ;
typedef TYPE_2__ update_check_thread_t ;


 int VLC_THREAD_PRIORITY_LOW ;
 int assert (TYPE_1__*) ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int update_CheckReal ;
 int vlc_clone (int *,int ,TYPE_2__*,int ) ;
 int vlc_join (int ,int *) ;

void update_Check( update_t *p_update, void (*pf_callback)( void*, bool ), void *p_data )
{
    assert( p_update );


    if( p_update->p_check )
    {
        vlc_join( p_update->p_check->thread, ((void*)0) );
        free( p_update->p_check );
    }

    update_check_thread_t *p_uct = calloc( 1, sizeof( *p_uct ) );
    if( !p_uct ) return;

    p_uct->p_update = p_update;
    p_update->p_check = p_uct;
    p_uct->pf_callback = pf_callback;
    p_uct->p_data = p_data;

    vlc_clone( &p_uct->thread, update_CheckReal, p_uct, VLC_THREAD_PRIORITY_LOW );
}
