
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_int_t ;
struct TYPE_3__ {int * p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int libvlc_SetExitHandler (int *,void (*) (void*),void*) ;

void libvlc_set_exit_handler( libvlc_instance_t *p_i, void (*cb) (void *),
                              void *data )
{
    libvlc_int_t *p_libvlc = p_i->p_libvlc_int;
    libvlc_SetExitHandler( p_libvlc, cb, data );
}
