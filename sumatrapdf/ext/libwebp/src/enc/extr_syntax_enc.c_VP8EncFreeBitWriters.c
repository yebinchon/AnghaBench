
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_parts_; int * parts_; int bw_; } ;
typedef TYPE_1__ VP8Encoder ;


 int VP8BitWriterWipeOut (int *) ;

void VP8EncFreeBitWriters(VP8Encoder* const enc) {
  int p;
  VP8BitWriterWipeOut(&enc->bw_);
  for (p = 0; p < enc->num_parts_; ++p) {
    VP8BitWriterWipeOut(enc->parts_ + p);
  }
}
