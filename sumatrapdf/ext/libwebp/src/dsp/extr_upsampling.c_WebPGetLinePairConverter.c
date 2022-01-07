
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPUpsampleLinePairFunc ;


 int DualLineSamplerARGB ;
 int DualLineSamplerBGRA ;
 size_t MODE_ARGB ;
 size_t MODE_BGRA ;
 int WebPInitUpsamplers () ;
 int * WebPUpsamplers ;

WebPUpsampleLinePairFunc WebPGetLinePairConverter(int alpha_is_last) {
  WebPInitUpsamplers();



  return (alpha_is_last ? DualLineSamplerBGRA : DualLineSamplerARGB);

}
