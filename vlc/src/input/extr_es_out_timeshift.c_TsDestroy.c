
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int wait; } ;
typedef TYPE_1__ ts_thread_t ;


 int free (TYPE_1__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void TsDestroy( ts_thread_t *p_ts )
{
    vlc_cond_destroy( &p_ts->wait );
    vlc_mutex_destroy( &p_ts->lock );
    free( p_ts );
}
