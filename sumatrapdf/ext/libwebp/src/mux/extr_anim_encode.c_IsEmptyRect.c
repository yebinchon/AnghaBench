
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ width_; scalar_t__ height_; } ;
typedef TYPE_1__ FrameRectangle ;



__attribute__((used)) static int IsEmptyRect(const FrameRectangle* const rect) {
  return (rect->width_ == 0) || (rect->height_ == 0);
}
