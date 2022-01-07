
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p_encoder; } ;
typedef TYPE_2__ transcode_encoder_t ;
typedef int es_format_t ;
struct TYPE_4__ {int fmt_in; } ;


 int es_format_Clean (int *) ;
 int es_format_Copy (int *,int const*) ;

void transcode_encoder_update_format_in( transcode_encoder_t *p_enc, const es_format_t *fmt )
{
    es_format_Clean( &p_enc->p_encoder->fmt_in );
    es_format_Copy( &p_enc->p_encoder->fmt_in, fmt );
}
