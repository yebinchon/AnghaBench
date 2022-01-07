
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int mb_y; int mb_h; scalar_t__ crop_top; scalar_t__ crop_bottom; int width; scalar_t__ fancy_upsampling; } ;
typedef TYPE_1__ VP8Io ;



__attribute__((used)) static int GetAlphaSourceRow(const VP8Io* const io,
                             const uint8_t** alpha, int* const num_rows) {
  int start_y = io->mb_y;
  *num_rows = io->mb_h;



  if (io->fancy_upsampling) {
    if (start_y == 0) {

      --*num_rows;
    } else {
      --start_y;



      *alpha -= io->width;
    }
    if (io->crop_top + io->mb_y + io->mb_h == io->crop_bottom) {

      *num_rows = io->crop_bottom - io->crop_top - start_y;
    }
  }
  return start_y;
}
