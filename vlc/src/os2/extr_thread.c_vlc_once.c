
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; int mutex; } ;
typedef TYPE_1__ vlc_once_t ;


 int __atomic_xchg (unsigned int*,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_once(vlc_once_t *once, void (*cb)(void))
{
    unsigned done;


    __atomic_xchg( &done, once->done );


    if( done == 0 )
    {
        vlc_mutex_lock( &once->mutex );


        __atomic_xchg( &done, once->done );


        if( done == 0 )
        {
            cb();


            __atomic_xchg( &once->done, 1 );
        }

        vlc_mutex_unlock( &once->mutex );
    }
}
