
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int WebPMuxError ;
struct TYPE_3__ {int images_; } ;
typedef TYPE_1__ WebPMux ;


 int MuxImageDeleteNth (int *,int ) ;
 int WEBP_MUX_INVALID_ARGUMENT ;

WebPMuxError WebPMuxDeleteFrame(WebPMux* mux, uint32_t nth) {
  if (mux == ((void*)0)) return WEBP_MUX_INVALID_ARGUMENT;
  return MuxImageDeleteNth(&mux->images_, nth);
}
