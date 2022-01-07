
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_5__ {int * refs_; int hash_chain_; TYPE_1__* pic_; } ;
typedef TYPE_2__ VP8LEncoder ;


 int const MAX_REFS_BLOCK_PER_IMAGE ;
 int VP8LBackwardRefsInit (int *,int const) ;
 int VP8LHashChainInit (int *,int const) ;

__attribute__((used)) static int EncoderInit(VP8LEncoder* const enc) {
  const WebPPicture* const pic = enc->pic_;
  const int width = pic->width;
  const int height = pic->height;
  const int pix_cnt = width * height;


  const int refs_block_size = (pix_cnt - 1) / MAX_REFS_BLOCK_PER_IMAGE + 1;
  int i;
  if (!VP8LHashChainInit(&enc->hash_chain_, pix_cnt)) return 0;

  for (i = 0; i < 3; ++i) VP8LBackwardRefsInit(&enc->refs_[i], refs_block_size);

  return 1;
}
