
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int NUM_CHANNELS ;
 int assert (int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void ZeroFillFrameRect(uint8_t* buf, int buf_stride, int x_offset,
                              int y_offset, int width, int height) {
  int j;
  assert(width * NUM_CHANNELS <= buf_stride);
  buf += y_offset * buf_stride + x_offset * NUM_CHANNELS;
  for (j = 0; j < height; ++j) {
    memset(buf, 0, width * NUM_CHANNELS);
    buf += buf_stride;
  }
}
