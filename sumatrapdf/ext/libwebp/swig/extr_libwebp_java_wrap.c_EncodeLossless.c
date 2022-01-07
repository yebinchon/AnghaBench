
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t (* WebPEncodeLosslessFunction ) (int const*,int,int,int,int **) ;



__attribute__((used)) static uint8_t* EncodeLossless(const uint8_t* rgb,
                               int width, int height, int stride,
                               WebPEncodeLosslessFunction encfn,
                               int* output_size, int* unused) {
  uint8_t* output = ((void*)0);
  const size_t image_size = encfn(rgb, width, height, stride, &output);


  *output_size = image_size;
  *unused = 1;
  return image_size ? output : ((void*)0);
}
