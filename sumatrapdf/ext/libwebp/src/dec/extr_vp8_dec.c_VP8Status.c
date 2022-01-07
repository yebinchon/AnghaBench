
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VP8StatusCode ;
struct TYPE_3__ {int status_; } ;
typedef TYPE_1__ VP8Decoder ;


 int VP8_STATUS_INVALID_PARAM ;

VP8StatusCode VP8Status(VP8Decoder* const dec) {
  if (!dec) return VP8_STATUS_INVALID_PARAM;
  return dec->status_;
}
