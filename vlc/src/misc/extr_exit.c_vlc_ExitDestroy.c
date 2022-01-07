
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ vlc_exit_t ;


 int vlc_mutex_destroy (int *) ;

void vlc_ExitDestroy( vlc_exit_t *exit )
{
    vlc_mutex_destroy( &exit->lock );
}
