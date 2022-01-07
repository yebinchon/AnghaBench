
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {int ctx; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int aom_codec_ctx_t ;


 int AOM_ERR (TYPE_1__*,int *,char*) ;
 int DropFrame ;
 int PopFrames (TYPE_1__*,int ) ;
 scalar_t__ PushFrame (TYPE_1__*,int *) ;
 scalar_t__ VLCDEC_SUCCESS ;

__attribute__((used)) static void FlushDecoder(decoder_t *dec)
{
    decoder_sys_t *p_sys = dec->p_sys;
    aom_codec_ctx_t *ctx = &p_sys->ctx;

    if(PushFrame(dec, ((void*)0)) != VLCDEC_SUCCESS)
        AOM_ERR(dec, ctx, "Failed to flush decoder");
    else
        PopFrames(dec, DropFrame);
}
