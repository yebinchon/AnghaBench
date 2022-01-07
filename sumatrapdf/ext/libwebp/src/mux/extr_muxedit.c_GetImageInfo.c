
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width_; int height_; int * header_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef scalar_t__ WebPMuxError ;
typedef int WebPChunk ;


 scalar_t__ GetFrameInfo (int const* const,int* const,int* const,int* const) ;
 scalar_t__ WEBP_MUX_OK ;
 int assert (int ) ;

__attribute__((used)) static WebPMuxError GetImageInfo(const WebPMuxImage* const wpi,
                                 int* const x_offset, int* const y_offset,
                                 int* const duration,
                                 int* const width, int* const height) {
  const WebPChunk* const frame_chunk = wpi->header_;
  WebPMuxError err;
  assert(wpi != ((void*)0));
  assert(frame_chunk != ((void*)0));


  err = GetFrameInfo(frame_chunk, x_offset, y_offset, duration);
  if (err != WEBP_MUX_OK) return err;


  if (width != ((void*)0)) *width = wpi->width_;
  if (height != ((void*)0)) *height = wpi->height_;
  return WEBP_MUX_OK;
}
