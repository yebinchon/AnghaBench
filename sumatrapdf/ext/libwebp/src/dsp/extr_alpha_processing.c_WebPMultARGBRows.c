
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int WebPMultARGBRow (int *,int,int) ;

void WebPMultARGBRows(uint8_t* ptr, int stride, int width, int num_rows,
                      int inverse) {
  int n;
  for (n = 0; n < num_rows; ++n) {
    WebPMultARGBRow((uint32_t*)ptr, width, inverse);
    ptr += stride;
  }
}
