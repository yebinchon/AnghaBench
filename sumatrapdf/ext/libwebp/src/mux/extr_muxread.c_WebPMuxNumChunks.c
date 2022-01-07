
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WebPMuxError ;
struct TYPE_5__ {int images_; } ;
typedef TYPE_1__ WebPMux ;
typedef int WebPChunkId ;
typedef int WebPChunk ;
struct TYPE_6__ {int tag; } ;
typedef size_t CHUNK_INDEX ;


 size_t ChunkGetIndexFromId (int ) ;
 int CountChunks (int * const,int ) ;
 scalar_t__ IsWPI (int ) ;
 int ** MuxGetChunkListFromId (TYPE_1__ const*,int ) ;
 int MuxImageCount (int ,int ) ;
 int WEBP_MUX_INVALID_ARGUMENT ;
 int WEBP_MUX_OK ;
 TYPE_2__* kChunks ;

WebPMuxError WebPMuxNumChunks(const WebPMux* mux,
                              WebPChunkId id, int* num_elements) {
  if (mux == ((void*)0) || num_elements == ((void*)0)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }

  if (IsWPI(id)) {
    *num_elements = MuxImageCount(mux->images_, id);
  } else {
    WebPChunk* const* chunk_list = MuxGetChunkListFromId(mux, id);
    const CHUNK_INDEX idx = ChunkGetIndexFromId(id);
    *num_elements = CountChunks(*chunk_list, kChunks[idx].tag);
  }

  return WEBP_MUX_OK;
}
