
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width_; int height_; struct TYPE_5__* next_; int * header_; int * img_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_6__ {TYPE_1__* images_; } ;
typedef TYPE_2__ WebPMux ;


 scalar_t__ GetImageInfo (TYPE_1__*,int*,int*,int*,int*,int*) ;
 int MAX_POSITION_OFFSET ;
 scalar_t__ const WEBP_MUX_OK ;
 int assert (int) ;

__attribute__((used)) static WebPMuxError GetAdjustedCanvasSize(const WebPMux* const mux,
                                          int* const width, int* const height) {
  WebPMuxImage* wpi = ((void*)0);
  assert(mux != ((void*)0));
  assert(width != ((void*)0) && height != ((void*)0));

  wpi = mux->images_;
  assert(wpi != ((void*)0));
  assert(wpi->img_ != ((void*)0));

  if (wpi->next_ != ((void*)0)) {
    int max_x = 0, max_y = 0;

    assert(wpi->header_ != ((void*)0));

    for (; wpi != ((void*)0); wpi = wpi->next_) {
      int x_offset = 0, y_offset = 0, duration = 0, w = 0, h = 0;
      const WebPMuxError err = GetImageInfo(wpi, &x_offset, &y_offset,
                                            &duration, &w, &h);
      const int max_x_pos = x_offset + w;
      const int max_y_pos = y_offset + h;
      if (err != WEBP_MUX_OK) return err;
      assert(x_offset < MAX_POSITION_OFFSET);
      assert(y_offset < MAX_POSITION_OFFSET);

      if (max_x_pos > max_x) max_x = max_x_pos;
      if (max_y_pos > max_y) max_y = max_y_pos;
    }
    *width = max_x;
    *height = max_y;
  } else {

    *width = wpi->width_;
    *height = wpi->height_;
  }
  return WEBP_MUX_OK;
}
