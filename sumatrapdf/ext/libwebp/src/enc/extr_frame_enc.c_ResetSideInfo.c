
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * stats; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_7__ {int block_count_; TYPE_1__* pic_; } ;
typedef TYPE_2__ VP8Encoder ;
struct TYPE_8__ {TYPE_2__* enc_; } ;
typedef TYPE_3__ VP8EncIterator ;


 int ResetSSE (TYPE_2__* const) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void ResetSideInfo(const VP8EncIterator* const it) {
  VP8Encoder* const enc = it->enc_;
  WebPPicture* const pic = enc->pic_;
  if (pic->stats != ((void*)0)) {
    memset(enc->block_count_, 0, sizeof(enc->block_count_));
  }
  ResetSSE(enc);
}
