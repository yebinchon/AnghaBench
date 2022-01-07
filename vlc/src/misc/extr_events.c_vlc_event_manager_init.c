
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* events; int lock; void* p_obj; } ;
typedef TYPE_1__ vlc_event_manager_t ;
struct TYPE_5__ {int listeners; } ;


 int ARRAY_INIT (int ) ;
 size_t ARRAY_SIZE (TYPE_3__*) ;
 int vlc_mutex_init_recursive (int *) ;

void vlc_event_manager_init( vlc_event_manager_t * p_em, void * p_obj )
{
    p_em->p_obj = p_obj;


    vlc_mutex_init_recursive( &p_em->lock );

    for( size_t i = 0; i < ARRAY_SIZE(p_em->events); i++ )
       ARRAY_INIT( p_em->events[i].listeners );
}
