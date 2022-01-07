
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPPicture ;
typedef int FrameRectangle ;


 int WEBP_MUX_DISPOSE_BACKGROUND ;
 int WebPUtilClearPic (int * const,int const* const) ;
 int assert (int ) ;

__attribute__((used)) static void DisposeFrameRectangle(int dispose_method,
                                  const FrameRectangle* const rect,
                                  WebPPicture* const curr_canvas) {
  assert(rect != ((void*)0));
  if (dispose_method == WEBP_MUX_DISPOSE_BACKGROUND) {
    WebPUtilClearPic(curr_canvas, rect);
  }
}
