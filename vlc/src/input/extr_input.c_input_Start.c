
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {int is_running; int thread; scalar_t__ b_preparsing; } ;
typedef TYPE_1__ input_thread_private_t ;


 void* Preparse (void*) ;
 void* Run (void*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_INPUT ;
 int assert (int) ;
 TYPE_1__* input_priv (int *) ;
 int msg_Err (int *,char*) ;
 int vlc_clone (int *,void* (*) (void*),TYPE_1__*,int ) ;

int input_Start( input_thread_t *p_input )
{
    input_thread_private_t *priv = input_priv(p_input);
    void *(*func)(void *) = Run;

    if( priv->b_preparsing )
        func = Preparse;

    assert( !priv->is_running );

    priv->is_running = !vlc_clone( &priv->thread, func, priv,
                                   VLC_THREAD_PRIORITY_INPUT );
    if( !priv->is_running )
    {
        msg_Err( p_input, "cannot create input thread" );
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
