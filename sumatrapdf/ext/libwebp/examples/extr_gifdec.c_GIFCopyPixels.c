
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WebPPicture {int dummy; } ;


 int ErrorGIFNotAvailable () ;

void GIFCopyPixels(const struct WebPPicture* const src,
                   struct WebPPicture* const dst) {
  (void)src;
  (void)dst;
  ErrorGIFNotAvailable();
}
