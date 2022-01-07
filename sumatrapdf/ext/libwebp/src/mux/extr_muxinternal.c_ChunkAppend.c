
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WebPMuxError ;
struct TYPE_6__ {struct TYPE_6__* next_; } ;
typedef TYPE_1__ WebPChunk ;


 int ChunkSetHead (TYPE_1__* const,TYPE_1__**) ;
 int WEBP_MUX_OK ;
 int assert (int) ;

WebPMuxError ChunkAppend(WebPChunk* const chunk,
                         WebPChunk*** const chunk_list) {
  assert(chunk_list != ((void*)0) && *chunk_list != ((void*)0));

  if (**chunk_list == ((void*)0)) {
    ChunkSetHead(chunk, *chunk_list);
  } else {
    WebPChunk* last_chunk = **chunk_list;
    while (last_chunk->next_ != ((void*)0)) last_chunk = last_chunk->next_;
    ChunkSetHead(chunk, &last_chunk->next_);
    *chunk_list = &last_chunk->next_;
  }
  return WEBP_MUX_OK;
}
