
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int * header_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef int WebPMuxFrameInfo ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_9__ {int images_; } ;
typedef TYPE_2__ WebPMux ;


 scalar_t__ MuxGetFrameInternal (TYPE_1__*,int *) ;
 scalar_t__ MuxGetImageInternal (TYPE_1__*,int *) ;
 scalar_t__ MuxImageGetNth (TYPE_1__ const**,int ,TYPE_1__**) ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ WEBP_MUX_OK ;

WebPMuxError WebPMuxGetFrame(
    const WebPMux* mux, uint32_t nth, WebPMuxFrameInfo* frame) {
  WebPMuxError err;
  WebPMuxImage* wpi;


  if (mux == ((void*)0) || frame == ((void*)0)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }


  err = MuxImageGetNth((const WebPMuxImage**)&mux->images_, nth, &wpi);
  if (err != WEBP_MUX_OK) return err;


  if (wpi->header_ == ((void*)0)) {
    return MuxGetImageInternal(wpi, frame);
  } else {
    return MuxGetFrameInternal(wpi, frame);
  }
}
