
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int WebPMuxError ;
struct TYPE_6__ {scalar_t__ tag_; struct TYPE_6__* next_; } ;
typedef TYPE_1__ WebPChunk ;


 TYPE_1__* ChunkDelete (TYPE_1__* const) ;
 int WEBP_MUX_NOT_FOUND ;
 int WEBP_MUX_OK ;
 int assert (TYPE_1__**) ;

__attribute__((used)) static WebPMuxError DeleteChunks(WebPChunk** chunk_list, uint32_t tag) {
  WebPMuxError err = WEBP_MUX_NOT_FOUND;
  assert(chunk_list);
  while (*chunk_list) {
    WebPChunk* const chunk = *chunk_list;
    if (chunk->tag_ == tag) {
      *chunk_list = ChunkDelete(chunk);
      err = WEBP_MUX_OK;
    } else {
      chunk_list = &chunk->next_;
    }
  }
  return err;
}
