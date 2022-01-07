
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SimpleVFilter16_C (int *,int,int) ;

__attribute__((used)) static void SimpleVFilter16i_C(uint8_t* p, int stride, int thresh) {
  int k;
  for (k = 3; k > 0; --k) {
    p += 4 * stride;
    SimpleVFilter16_C(p, stride, thresh);
  }
}
