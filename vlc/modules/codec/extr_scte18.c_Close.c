
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int p_handle; } ;
typedef TYPE_2__ decoder_sys_t ;


 int atsc_a65_handle_Release (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close( vlc_object_t *p_object )
{
    decoder_t *p_dec = (decoder_t *)p_object;
    decoder_sys_t *p_sys = (decoder_sys_t *) p_dec->p_sys;
    atsc_a65_handle_Release( p_sys->p_handle );
    free( p_sys );
}
