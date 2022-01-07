
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tokens_; } ;
typedef TYPE_1__ VP8Encoder ;


 int VP8EncDeleteAlpha (TYPE_1__*) ;
 int VP8TBufferClear (int *) ;
 int WebPSafeFree (TYPE_1__*) ;

__attribute__((used)) static int DeleteVP8Encoder(VP8Encoder* enc) {
  int ok = 1;
  if (enc != ((void*)0)) {
    ok = VP8EncDeleteAlpha(enc);
    VP8TBufferClear(&enc->tokens_);
    WebPSafeFree(enc);
  }
  return ok;
}
