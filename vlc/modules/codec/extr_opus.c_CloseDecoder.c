
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {scalar_t__ p_st; } ;
typedef TYPE_2__ decoder_sys_t ;


 int free (TYPE_2__*) ;
 int opus_multistream_decoder_destroy (scalar_t__) ;

__attribute__((used)) static void CloseDecoder( vlc_object_t *p_this )
{
    decoder_t * p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_sys->p_st ) opus_multistream_decoder_destroy(p_sys->p_st);

    free( p_sys );
}
