
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int WebPMuxError ;
typedef int WebPMux ;


 int MuxGetCanvasInfo (int const*,int *,int *,int *) ;
 int WEBP_MUX_INVALID_ARGUMENT ;

WebPMuxError WebPMuxGetFeatures(const WebPMux* mux, uint32_t* flags) {
  if (mux == ((void*)0) || flags == ((void*)0)) return WEBP_MUX_INVALID_ARGUMENT;
  return MuxGetCanvasInfo(mux, ((void*)0), ((void*)0), flags);
}
