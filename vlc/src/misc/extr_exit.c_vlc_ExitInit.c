
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * opaque; int * handler; int lock; } ;
typedef TYPE_1__ vlc_exit_t ;


 int vlc_mutex_init (int *) ;

void vlc_ExitInit( vlc_exit_t *exit )
{
    vlc_mutex_init( &exit->lock );
    exit->handler = ((void*)0);
    exit->opaque = ((void*)0);
}
