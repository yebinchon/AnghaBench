
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int eof_; } ;
struct TYPE_6__ {int mb_w_; TYPE_1__ br_; } ;
typedef TYPE_2__ VP8Decoder ;
typedef int VP8BitReader ;


 int ParseIntraMode (int * const,TYPE_2__* const,int) ;

int VP8ParseIntraModeRow(VP8BitReader* const br, VP8Decoder* const dec) {
  int mb_x;
  for (mb_x = 0; mb_x < dec->mb_w_; ++mb_x) {
    ParseIntraMode(br, dec, mb_x);
  }
  return !dec->br_.eof_;
}
