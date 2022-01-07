
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const uint64_t ;
struct TYPE_5__ {int width; int crop_bottom; } ;
typedef TYPE_1__ VP8Io ;
struct TYPE_6__ {int * alpha_prev_line_; int * alpha_plane_mem_; int * alpha_plane_; } ;
typedef TYPE_2__ VP8Decoder ;


 scalar_t__ WebPSafeMalloc (int const,int) ;
 int assert (int ) ;

__attribute__((used)) static int AllocateAlphaPlane(VP8Decoder* const dec, const VP8Io* const io) {
  const int stride = io->width;
  const int height = io->crop_bottom;
  const uint64_t alpha_size = (uint64_t)stride * height;
  assert(dec->alpha_plane_mem_ == ((void*)0));
  dec->alpha_plane_mem_ =
      (uint8_t*)WebPSafeMalloc(alpha_size, sizeof(*dec->alpha_plane_));
  if (dec->alpha_plane_mem_ == ((void*)0)) {
    return 0;
  }
  dec->alpha_plane_ = dec->alpha_plane_mem_;
  dec->alpha_prev_line_ = ((void*)0);
  return 1;
}
