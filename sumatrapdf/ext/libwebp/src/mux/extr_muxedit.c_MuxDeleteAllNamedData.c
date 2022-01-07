
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int WebPMuxError ;
typedef int WebPMux ;
typedef int WebPChunkId ;


 int ChunkGetIdFromTag (int ) ;
 int DeleteChunks (int ,int ) ;
 scalar_t__ IsWPI (int const) ;
 int MuxGetChunkListFromId (int * const,int const) ;
 int WEBP_MUX_INVALID_ARGUMENT ;
 int assert (int ) ;

__attribute__((used)) static WebPMuxError MuxDeleteAllNamedData(WebPMux* const mux, uint32_t tag) {
  const WebPChunkId id = ChunkGetIdFromTag(tag);
  assert(mux != ((void*)0));
  if (IsWPI(id)) return WEBP_MUX_INVALID_ARGUMENT;
  return DeleteChunks(MuxGetChunkListFromId(mux, id), tag);
}
