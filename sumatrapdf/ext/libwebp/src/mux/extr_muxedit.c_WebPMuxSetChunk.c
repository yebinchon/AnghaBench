
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ WebPMuxError ;
typedef int WebPMux ;
struct TYPE_4__ {scalar_t__ size; int * bytes; } ;
typedef TYPE_1__ WebPData ;


 int ChunkGetTagFromFourCC (char const*) ;
 scalar_t__ MAX_CHUNK_PAYLOAD ;
 scalar_t__ MuxDeleteAllNamedData (int *,int ) ;
 scalar_t__ MuxSet (int *,int ,TYPE_1__ const*,int) ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ WEBP_MUX_NOT_FOUND ;
 scalar_t__ WEBP_MUX_OK ;

WebPMuxError WebPMuxSetChunk(WebPMux* mux, const char fourcc[4],
                             const WebPData* chunk_data, int copy_data) {
  uint32_t tag;
  WebPMuxError err;
  if (mux == ((void*)0) || fourcc == ((void*)0) || chunk_data == ((void*)0) ||
      chunk_data->bytes == ((void*)0) || chunk_data->size > MAX_CHUNK_PAYLOAD) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }
  tag = ChunkGetTagFromFourCC(fourcc);


  err = MuxDeleteAllNamedData(mux, tag);
  if (err != WEBP_MUX_OK && err != WEBP_MUX_NOT_FOUND) return err;


  return MuxSet(mux, tag, chunk_data, copy_data);
}
