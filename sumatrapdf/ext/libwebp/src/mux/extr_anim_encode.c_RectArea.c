
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int height_; scalar_t__ width_; } ;
typedef TYPE_1__ FrameRectangle ;



__attribute__((used)) static uint32_t RectArea(const FrameRectangle* const rect) {
  return (uint32_t)rect->width_ * rect->height_;
}
