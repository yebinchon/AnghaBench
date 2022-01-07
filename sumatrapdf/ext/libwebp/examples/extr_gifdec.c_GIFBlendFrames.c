
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WebPPicture {int dummy; } ;
typedef int GIFFrameRect ;


 int ErrorGIFNotAvailable () ;

void GIFBlendFrames(const struct WebPPicture* const src,
                    const GIFFrameRect* const rect,
                    struct WebPPicture* const dst) {
  (void)src;
  (void)rect;
  (void)dst;
  ErrorGIFNotAvailable();
}
