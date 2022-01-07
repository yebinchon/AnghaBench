
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_5__ {int p_parser_ctx; int p_codec_ctx; } ;
typedef TYPE_2__ decoder_sys_t ;


 int av_parser_close (int ) ;
 int avcodec_free_context (int *) ;
 int free (TYPE_2__*) ;
 scalar_t__ likely (int ) ;

void avparser_ClosePacketizer( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    if (likely( p_sys != ((void*)0) ))
    {
        avcodec_free_context( &p_sys->p_codec_ctx );
        av_parser_close( p_sys->p_parser_ctx );
        free( p_sys );
    }
}
