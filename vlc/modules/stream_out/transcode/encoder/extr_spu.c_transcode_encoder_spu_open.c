
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_6__* p_encoder; } ;
typedef TYPE_2__ transcode_encoder_t ;
struct TYPE_9__ {int psz_name; int i_codec; int p_config_chain; } ;
typedef TYPE_3__ transcode_encoder_config_t ;
struct TYPE_7__ {int i_codec; } ;
struct TYPE_10__ {scalar_t__ p_module; TYPE_1__ fmt_out; int p_cfg; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ module_need (TYPE_6__*,char*,int ,int) ;

int transcode_encoder_spu_open( transcode_encoder_t *p_enc,
                                const transcode_encoder_config_t *p_cfg )
{
    p_enc->p_encoder->p_cfg = p_cfg->p_config_chain;
    p_enc->p_encoder->fmt_out.i_codec = p_cfg->i_codec;

    p_enc->p_encoder->p_module = module_need( p_enc->p_encoder, "encoder",
                                              p_cfg->psz_name, 1 );

    return ( p_enc->p_encoder->p_module ) ? VLC_SUCCESS: VLC_EGENERIC;
}
