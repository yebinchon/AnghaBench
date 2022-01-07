
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x_offset; int y_offset; } ;
typedef TYPE_1__ WebPMuxFrameInfo ;


 int fprintf (int ,char*,int,int,int,int) ;
 int stderr ;

__attribute__((used)) static void WarnAboutOddOffset(const WebPMuxFrameInfo* const info) {
  if ((info->x_offset | info->y_offset) & 1) {
    fprintf(stderr, "Warning: odd offsets will be snapped to even values"
            " (%d, %d) -> (%d, %d)\n", info->x_offset, info->y_offset,
            info->x_offset & ~1, info->y_offset & ~1);
  }
}
