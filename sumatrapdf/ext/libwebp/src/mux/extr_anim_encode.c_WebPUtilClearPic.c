
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_7__ {int height_; int width_; int y_offset_; int x_offset_; } ;
typedef TYPE_2__ FrameRectangle ;


 int ClearRectangle (TYPE_1__* const,int ,int ,int ,int ) ;

__attribute__((used)) static void WebPUtilClearPic(WebPPicture* const picture,
                             const FrameRectangle* const rect) {
  if (rect != ((void*)0)) {
    ClearRectangle(picture, rect->x_offset_, rect->y_offset_,
                   rect->width_, rect->height_);
  } else {
    ClearRectangle(picture, 0, 0, picture->width, picture->height);
  }
}
