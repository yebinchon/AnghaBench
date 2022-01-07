
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WebPPicture {int dummy; } ;
typedef int GIFFrameRect ;
typedef int GIFDisposeMethod ;


 int ErrorGIFNotAvailable () ;

void GIFDisposeFrame(GIFDisposeMethod dispose, const GIFFrameRect* const rect,
                     const struct WebPPicture* const prev_canvas,
                     struct WebPPicture* const curr_canvas) {
  (void)dispose;
  (void)rect;
  (void)prev_canvas;
  (void)curr_canvas;
  ErrorGIFNotAvailable();
}
