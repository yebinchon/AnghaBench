
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next_; } ;
typedef TYPE_1__ WebPMuxImage ;
typedef int const WebPChunkId ;
struct TYPE_7__ {int tag_; } ;
typedef TYPE_2__ WebPChunk ;


 int const ChunkGetIdFromTag (int ) ;
 TYPE_2__** GetChunkListFromId (TYPE_1__ const*,int const) ;
 int const WEBP_CHUNK_NIL ;

int MuxImageCount(const WebPMuxImage* wpi_list, WebPChunkId id) {
  int count = 0;
  const WebPMuxImage* current;
  for (current = wpi_list; current != ((void*)0); current = current->next_) {
    if (id == WEBP_CHUNK_NIL) {
      ++count;
    } else {
      const WebPChunk* const wpi_chunk = *GetChunkListFromId(current, id);
      if (wpi_chunk != ((void*)0)) {
        const WebPChunkId wpi_chunk_id = ChunkGetIdFromTag(wpi_chunk->tag_);
        if (wpi_chunk_id == id) ++count;
      }
    }
  }
  return count;
}
