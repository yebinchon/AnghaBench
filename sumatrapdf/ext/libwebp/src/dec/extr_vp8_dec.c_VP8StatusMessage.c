
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* error_msg_; } ;
typedef TYPE_1__ VP8Decoder ;



const char* VP8StatusMessage(VP8Decoder* const dec) {
  if (dec == ((void*)0)) return "no object";
  if (!dec->error_msg_) return "OK";
  return dec->error_msg_;
}
