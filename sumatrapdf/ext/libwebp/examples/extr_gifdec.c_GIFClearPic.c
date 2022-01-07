
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WebPPicture {int dummy; } ;
typedef int GIFFrameRect ;


 int ErrorGIFNotAvailable () ;

void GIFClearPic(struct WebPPicture* const pic,
                 const GIFFrameRect* const rect) {
  (void)pic;
  (void)rect;
  ErrorGIFNotAvailable();
}
