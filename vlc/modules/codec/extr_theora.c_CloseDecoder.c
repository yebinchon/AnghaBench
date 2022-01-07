
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int tcx; int tc; int ti; } ;
typedef TYPE_2__ decoder_sys_t ;


 int free (TYPE_2__*) ;
 int th_comment_clear (int *) ;
 int th_decode_free (int ) ;
 int th_info_clear (int *) ;

__attribute__((used)) static void CloseDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t *)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    th_info_clear(&p_sys->ti);
    th_comment_clear(&p_sys->tc);
    th_decode_free(p_sys->tcx);
    free( p_sys );
}
