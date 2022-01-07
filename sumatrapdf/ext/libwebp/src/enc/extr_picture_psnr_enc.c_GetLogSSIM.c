
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double kMinDistortion_dB ;
 double log10 (int) ;

__attribute__((used)) static double GetLogSSIM(double v, double size) {
  v = (size > 0.) ? v / size : 1.;
  return (v < 1.) ? -10.0 * log10(1. - v) : kMinDistortion_dB;
}
