
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double kMinDistortion_dB ;
 double log (double) ;

__attribute__((used)) static double GetPSNR(double v, double size) {
  return (v > 0. && size > 0.) ? -4.3429448 * log(v / (size * 255 * 255.))
                               : kMinDistortion_dB;
}
