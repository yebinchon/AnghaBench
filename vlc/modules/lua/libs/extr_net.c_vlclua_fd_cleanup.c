
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int fdc; int* fdv; int interrupt; } ;
typedef TYPE_1__ vlclua_dtable_t ;


 int free (int*) ;
 int net_Close (int) ;
 int vlc_interrupt_destroy (int ) ;

void vlclua_fd_cleanup( vlclua_dtable_t *dt )
{
    for( unsigned i = 0; i < dt->fdc; i++ )
        if( dt->fdv[i] != -1 )
            net_Close( dt->fdv[i] );
    free( dt->fdv );
    vlc_interrupt_destroy(dt->interrupt);
}
