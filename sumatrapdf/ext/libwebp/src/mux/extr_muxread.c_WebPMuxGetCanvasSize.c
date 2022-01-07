
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPMuxError ;
typedef int WebPMux ;


 int MuxGetCanvasInfo (int const*,int*,int*,int *) ;
 int WEBP_MUX_INVALID_ARGUMENT ;

WebPMuxError WebPMuxGetCanvasSize(const WebPMux* mux, int* width, int* height) {
  if (mux == ((void*)0) || width == ((void*)0) || height == ((void*)0)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }
  return MuxGetCanvasInfo(mux, width, height, ((void*)0));
}
