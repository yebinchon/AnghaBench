
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dq_uv_ac_; int dq_uv_dc_; int dq_y2_ac_; int dq_y2_dc_; int dq_y1_dc_; int base_quant_; } ;
typedef TYPE_1__ VP8Encoder ;
typedef int VP8BitWriter ;


 int VP8PutBits (int * const,int ,int) ;
 int VP8PutSignedBits (int * const,int ,int) ;

__attribute__((used)) static void PutQuant(VP8BitWriter* const bw,
                     const VP8Encoder* const enc) {
  VP8PutBits(bw, enc->base_quant_, 7);
  VP8PutSignedBits(bw, enc->dq_y1_dc_, 4);
  VP8PutSignedBits(bw, enc->dq_y2_dc_, 4);
  VP8PutSignedBits(bw, enc->dq_y2_ac_, 4);
  VP8PutSignedBits(bw, enc->dq_uv_dc_, 4);
  VP8PutSignedBits(bw, enc->dq_uv_ac_, 4);
}
