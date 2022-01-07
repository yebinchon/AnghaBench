
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int base_quant_; int const mb_w_; int const mb_h_; int const num_parts_; int pic_; scalar_t__ parts_; } ;
typedef TYPE_1__ VP8Encoder ;


 int VP8BitWriterInit (scalar_t__,int const) ;
 int VP8EncFreeBitWriters (TYPE_1__* const) ;
 int VP8_ENC_ERROR_OUT_OF_MEMORY ;
 int WebPEncodingSetError (int ,int ) ;
 int* kAverageBytesPerMB ;

__attribute__((used)) static int PreLoopInitialize(VP8Encoder* const enc) {
  int p;
  int ok = 1;
  const int average_bytes_per_MB = kAverageBytesPerMB[enc->base_quant_ >> 4];
  const int bytes_per_parts =
      enc->mb_w_ * enc->mb_h_ * average_bytes_per_MB / enc->num_parts_;

  for (p = 0; ok && p < enc->num_parts_; ++p) {
    ok = VP8BitWriterInit(enc->parts_ + p, bytes_per_parts);
  }
  if (!ok) {
    VP8EncFreeBitWriters(enc);
    WebPEncodingSetError(enc->pic_, VP8_ENC_ERROR_OUT_OF_MEMORY);
  }
  return ok;
}
