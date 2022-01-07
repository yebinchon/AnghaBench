
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* p_encoder; } ;
typedef TYPE_1__ transcode_encoder_t ;
typedef int subpicture_t ;
typedef int block_t ;
struct TYPE_5__ {int * (* pf_encode_sub ) (TYPE_3__*,int *) ;} ;


 int * stub1 (TYPE_3__*,int *) ;

block_t * transcode_encoder_spu_encode( transcode_encoder_t *p_enc, subpicture_t *p_spu )
{
    return p_enc->p_encoder->pf_encode_sub( p_enc->p_encoder, p_spu );
}
