
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ msb; scalar_t__ lsb; } ;
struct TYPE_5__ {int prevRefPictureIsBottomField; int prevRefPictureHasMMCO5; scalar_t__ prevFrameNumOffset; scalar_t__ prevFrameNum; TYPE_1__ prevPicOrderCnt; } ;
typedef TYPE_2__ h264_poc_context_t ;



__attribute__((used)) static inline void h264_poc_context_init( h264_poc_context_t *p_ctx )
{
    p_ctx->prevPicOrderCnt.lsb = 0;
    p_ctx->prevPicOrderCnt.msb = 0;
    p_ctx->prevFrameNum = 0;
    p_ctx->prevFrameNumOffset = 0;
    p_ctx->prevRefPictureIsBottomField = 0;
    p_ctx->prevRefPictureHasMMCO5 = 0;
}
