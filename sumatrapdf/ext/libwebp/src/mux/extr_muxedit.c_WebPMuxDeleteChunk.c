
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPMuxError ;
typedef int WebPMux ;


 int ChunkGetTagFromFourCC (char const*) ;
 int MuxDeleteAllNamedData (int *,int ) ;
 int WEBP_MUX_INVALID_ARGUMENT ;

WebPMuxError WebPMuxDeleteChunk(WebPMux* mux, const char fourcc[4]) {
  if (mux == ((void*)0) || fourcc == ((void*)0)) return WEBP_MUX_INVALID_ARGUMENT;
  return MuxDeleteAllNamedData(mux, ChunkGetTagFromFourCC(fourcc));
}
