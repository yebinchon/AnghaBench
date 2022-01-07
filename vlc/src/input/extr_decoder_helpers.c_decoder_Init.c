
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_cat; } ;
typedef TYPE_1__ es_format_t ;
struct TYPE_7__ {int b_frame_drop_allowed; int fmt_out; int fmt_in; int * p_module; int * pf_flush; int * pf_packetize; int * pf_get_cc; int * pf_decode; scalar_t__ i_extra_picture_buffers; } ;
typedef TYPE_2__ decoder_t ;


 int es_format_Copy (int *,TYPE_1__ const*) ;
 int es_format_Init (int *,int ,int ) ;

void decoder_Init( decoder_t *p_dec, const es_format_t *restrict p_fmt )
{
    p_dec->i_extra_picture_buffers = 0;
    p_dec->b_frame_drop_allowed = 0;

    p_dec->pf_decode = ((void*)0);
    p_dec->pf_get_cc = ((void*)0);
    p_dec->pf_packetize = ((void*)0);
    p_dec->pf_flush = ((void*)0);
    p_dec->p_module = ((void*)0);

    es_format_Copy( &p_dec->fmt_in, p_fmt );
    es_format_Init( &p_dec->fmt_out, p_fmt->i_cat, 0 );
}
