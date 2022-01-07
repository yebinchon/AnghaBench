
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int drift; } ;
typedef TYPE_1__ input_clock_t ;


 int AvgClean (int *) ;
 int free (TYPE_1__*) ;
 int vlc_mutex_destroy (int *) ;

void input_clock_Delete( input_clock_t *cl )
{
    AvgClean( &cl->drift );
    vlc_mutex_destroy( &cl->lock );
    free( cl );
}
