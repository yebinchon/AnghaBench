
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t (* WebPEncodeFunction ) (int const*,int,int,int,float,int **) ;



__attribute__((used)) static uint8_t* EncodeLossy(const uint8_t* rgb,
                            int width, int height, int stride,
                            float quality_factor,
                            WebPEncodeFunction encfn,
                            int* output_size, int* unused) {
  uint8_t* output = ((void*)0);
  const size_t image_size =
      encfn(rgb, width, height, stride, quality_factor, &output);


  *output_size = image_size;
  *unused = 1;
  return image_size ? output : ((void*)0);
}
