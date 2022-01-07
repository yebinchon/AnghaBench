
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPPicture ;


 int WebPPictureResetBuffers (int * const) ;
 int assert (int) ;

__attribute__((used)) static void PictureGrabSpecs(const WebPPicture* const src,
                             WebPPicture* const dst) {
  assert(src != ((void*)0) && dst != ((void*)0));
  *dst = *src;
  WebPPictureResetBuffers(dst);
}
