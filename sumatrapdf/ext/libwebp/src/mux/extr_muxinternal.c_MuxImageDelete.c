
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPMuxImage ;


 int * MuxImageRelease (int * const) ;
 int WebPSafeFree (int * const) ;

WebPMuxImage* MuxImageDelete(WebPMuxImage* const wpi) {

  WebPMuxImage* const next = MuxImageRelease(wpi);
  WebPSafeFree(wpi);
  return next;
}
