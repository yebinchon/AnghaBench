
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_7__ {scalar_t__ p_vbi_dec; int lock; } ;
typedef TYPE_2__ decoder_sys_t ;


 int Opaque ;
 int RequestPage ;
 int free (TYPE_2__*) ;
 int var_DelCallback (TYPE_1__*,char*,int ,TYPE_2__*) ;
 int vbi_decoder_delete (scalar_t__) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*) p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    var_DelCallback( p_dec, "vbi-opaque", Opaque, p_sys );
    var_DelCallback( p_dec, "vbi-page", RequestPage, p_sys );

    vlc_mutex_destroy( &p_sys->lock );

    if( p_sys->p_vbi_dec )
        vbi_decoder_delete( p_sys->p_vbi_dec );
    free( p_sys );
}
