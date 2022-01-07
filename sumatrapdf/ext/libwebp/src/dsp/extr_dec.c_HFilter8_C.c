
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FilterLoop26_C (int *,int,int,int,int,int,int) ;

__attribute__((used)) static void HFilter8_C(uint8_t* u, uint8_t* v, int stride,
                       int thresh, int ithresh, int hev_thresh) {
  FilterLoop26_C(u, 1, stride, 8, thresh, ithresh, hev_thresh);
  FilterLoop26_C(v, 1, stride, 8, thresh, ithresh, hev_thresh);
}
