
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BPS ;
 int U_OFF_ENC ;
 scalar_t__ VP8SSIMGetClipped (int const*,int ,int const*,int ,int,int,int,int) ;
 int VP8_SSIM_KERNEL ;
 int V_OFF_ENC ;
 int Y_OFF_ENC ;

__attribute__((used)) static double GetMBSSIM(const uint8_t* yuv1, const uint8_t* yuv2) {
  int x, y;
  double sum = 0.;


  for (y = VP8_SSIM_KERNEL; y < 16 - VP8_SSIM_KERNEL; y++) {
    for (x = VP8_SSIM_KERNEL; x < 16 - VP8_SSIM_KERNEL; x++) {
      sum += VP8SSIMGetClipped(yuv1 + Y_OFF_ENC, BPS, yuv2 + Y_OFF_ENC, BPS,
                               x, y, 16, 16);
    }
  }
  for (x = 1; x < 7; x++) {
    for (y = 1; y < 7; y++) {
      sum += VP8SSIMGetClipped(yuv1 + U_OFF_ENC, BPS, yuv2 + U_OFF_ENC, BPS,
                               x, y, 8, 8);
      sum += VP8SSIMGetClipped(yuv1 + V_OFF_ENC, BPS, yuv2 + V_OFF_ENC, BPS,
                               x, y, 8, 8);
    }
  }
  return sum;
}
