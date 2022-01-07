
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WebPMuxError ;
struct TYPE_7__ {int unknown_; } ;
typedef TYPE_1__ WebPMux ;
typedef int WebPData ;
struct TYPE_8__ {int data_; } ;
typedef TYPE_2__ WebPChunk ;
struct TYPE_9__ {int id; } ;
typedef size_t CHUNK_INDEX ;


 size_t ChunkGetIndexFromFourCC (char const*) ;
 int ChunkGetTagFromFourCC (char const*) ;
 TYPE_2__* ChunkSearchList (int ,int,int ) ;
 size_t IDX_UNKNOWN ;
 scalar_t__ IsWPI (int ) ;
 int MuxGet (TYPE_1__ const*,size_t,int,int *) ;
 int WEBP_MUX_INVALID_ARGUMENT ;
 int WEBP_MUX_NOT_FOUND ;
 int WEBP_MUX_OK ;
 TYPE_3__* kChunks ;

WebPMuxError WebPMuxGetChunk(const WebPMux* mux, const char fourcc[4],
                             WebPData* chunk_data) {
  CHUNK_INDEX idx;
  if (mux == ((void*)0) || fourcc == ((void*)0) || chunk_data == ((void*)0)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }
  idx = ChunkGetIndexFromFourCC(fourcc);
  if (IsWPI(kChunks[idx].id)) {
    return WEBP_MUX_INVALID_ARGUMENT;
  } else if (idx != IDX_UNKNOWN) {
    return MuxGet(mux, idx, 1, chunk_data);
  } else {
    const WebPChunk* const chunk =
        ChunkSearchList(mux->unknown_, 1, ChunkGetTagFromFourCC(fourcc));
    if (chunk == ((void*)0)) return WEBP_MUX_NOT_FOUND;
    *chunk_data = chunk->data_;
    return WEBP_MUX_OK;
  }
}
