
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,int const*,int) ;

void ImgIoUtilCopyPlane(const uint8_t* src, int src_stride,
                        uint8_t* dst, int dst_stride, int width, int height) {
  while (height-- > 0) {
    memcpy(dst, src, width * sizeof(*dst));
    src += src_stride;
    dst += dst_stride;
  }
}
