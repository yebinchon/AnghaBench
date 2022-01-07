
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width_; int height_; int has_alpha_; int * alpha_; TYPE_3__* img_; } ;
typedef TYPE_1__ WebPMuxImage ;
struct TYPE_7__ {int size; int bytes; } ;
typedef TYPE_2__ WebPData ;
struct TYPE_8__ {scalar_t__ tag_; TYPE_2__ data_; } ;
typedef TYPE_3__ WebPChunk ;
struct TYPE_9__ {scalar_t__ tag; } ;


 int ChunkDelete (int *) ;
 size_t IDX_VP8L ;
 int VP8GetInfo (int ,int ,int ,int*,int*) ;
 int VP8LGetInfo (int ,int ,int*,int*,int*) ;
 int assert (int ) ;
 TYPE_4__* kChunks ;

int MuxImageFinalize(WebPMuxImage* const wpi) {
  const WebPChunk* const img = wpi->img_;
  const WebPData* const image = &img->data_;
  const int is_lossless = (img->tag_ == kChunks[IDX_VP8L].tag);
  int w, h;
  int vp8l_has_alpha = 0;
  const int ok = is_lossless ?
      VP8LGetInfo(image->bytes, image->size, &w, &h, &vp8l_has_alpha) :
      VP8GetInfo(image->bytes, image->size, image->size, &w, &h);
  assert(img != ((void*)0));
  if (ok) {

    if (is_lossless && (wpi->alpha_ != ((void*)0))) {
      ChunkDelete(wpi->alpha_);
      wpi->alpha_ = ((void*)0);
    }
    wpi->width_ = w;
    wpi->height_ = h;
    wpi->has_alpha_ = vp8l_has_alpha || (wpi->alpha_ != ((void*)0));
  }
  return ok;
}
