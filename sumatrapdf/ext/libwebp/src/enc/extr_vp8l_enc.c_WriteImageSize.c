
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_7__ {int error_; } ;
typedef TYPE_2__ VP8LBitWriter ;


 int VP8LPutBits (TYPE_2__* const,int const,int ) ;
 int VP8L_IMAGE_SIZE_BITS ;
 int const WEBP_MAX_DIMENSION ;
 int assert (int) ;

__attribute__((used)) static int WriteImageSize(const WebPPicture* const pic,
                          VP8LBitWriter* const bw) {
  const int width = pic->width - 1;
  const int height = pic->height - 1;
  assert(width < WEBP_MAX_DIMENSION && height < WEBP_MAX_DIMENSION);

  VP8LPutBits(bw, width, VP8L_IMAGE_SIZE_BITS);
  VP8LPutBits(bw, height, VP8L_IMAGE_SIZE_BITS);
  return !bw->error_;
}
