
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* error_msg_; int status_; } ;
typedef TYPE_1__ VP8Decoder ;


 int VP8_STATUS_OK ;

__attribute__((used)) static void SetOk(VP8Decoder* const dec) {
  dec->status_ = VP8_STATUS_OK;
  dec->error_msg_ = "OK";
}
