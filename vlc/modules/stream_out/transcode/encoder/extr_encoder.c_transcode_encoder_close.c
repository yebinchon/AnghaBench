
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* p_encoder; } ;
typedef TYPE_2__ transcode_encoder_t ;
struct TYPE_6__ {int i_cat; } ;
struct TYPE_8__ {int * p_module; TYPE_1__ fmt_in; } ;



 int module_unneed (TYPE_5__*,int *) ;
 int transcode_encoder_video_close (TYPE_2__*) ;

void transcode_encoder_close( transcode_encoder_t *p_enc )
{
    if( !p_enc->p_encoder->p_module )
        return;

    switch( p_enc->p_encoder->fmt_in.i_cat )
    {
        case 128:
            transcode_encoder_video_close( p_enc );
            break;
        default:
            module_unneed( p_enc->p_encoder, p_enc->p_encoder->p_module );
            break;
    }

    p_enc->p_encoder->p_module = ((void*)0);
}
