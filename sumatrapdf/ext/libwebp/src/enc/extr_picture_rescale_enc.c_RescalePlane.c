
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int rescaler_t ;
typedef int WebPRescaler ;


 int WebPRescalerExport (int *) ;
 scalar_t__ WebPRescalerImport (int *,int,int const*,int) ;
 int WebPRescalerInit (int *,int,int,int *,int,int,int,int,int * const) ;

__attribute__((used)) static void RescalePlane(const uint8_t* src,
                         int src_width, int src_height, int src_stride,
                         uint8_t* dst,
                         int dst_width, int dst_height, int dst_stride,
                         rescaler_t* const work,
                         int num_channels) {
  WebPRescaler rescaler;
  int y = 0;
  WebPRescalerInit(&rescaler, src_width, src_height,
                   dst, dst_width, dst_height, dst_stride,
                   num_channels, work);
  while (y < src_height) {
    y += WebPRescalerImport(&rescaler, src_height - y,
                            src + y * src_stride, src_stride);
    WebPRescalerExport(&rescaler);
  }
}
