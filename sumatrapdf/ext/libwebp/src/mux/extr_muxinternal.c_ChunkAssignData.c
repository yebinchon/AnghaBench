
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int WebPMuxError ;
typedef int WebPData ;
struct TYPE_5__ {int owner_; scalar_t__ tag_; int data_; } ;
typedef TYPE_1__ WebPChunk ;
struct TYPE_6__ {scalar_t__ tag; } ;


 int ChunkRelease (TYPE_1__*) ;
 size_t IDX_ANIM ;
 size_t IDX_VP8X ;
 int WEBP_MUX_MEMORY_ERROR ;
 int WEBP_MUX_OK ;
 int WebPDataCopy (int const* const,int *) ;
 TYPE_2__* kChunks ;

WebPMuxError ChunkAssignData(WebPChunk* chunk, const WebPData* const data,
                             int copy_data, uint32_t tag) {

  if (tag == kChunks[IDX_VP8X].tag || tag == kChunks[IDX_ANIM].tag) {
    copy_data = 1;
  }

  ChunkRelease(chunk);

  if (data != ((void*)0)) {
    if (copy_data) {
      if (!WebPDataCopy(data, &chunk->data_)) return WEBP_MUX_MEMORY_ERROR;
      chunk->owner_ = 1;
    } else {
      chunk->data_ = *data;
    }
  }
  chunk->tag_ = tag;
  return WEBP_MUX_OK;
}
