
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FilterLoop26_C (int *,int,int,int,int,int,int) ;

__attribute__((used)) static void HFilter16_C(uint8_t* p, int stride,
                        int thresh, int ithresh, int hev_thresh) {
  FilterLoop26_C(p, 1, stride, 16, thresh, ithresh, hev_thresh);
}
