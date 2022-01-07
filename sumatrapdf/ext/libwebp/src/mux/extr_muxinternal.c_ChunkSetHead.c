
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WebPMuxError ;
struct TYPE_4__ {int * next_; scalar_t__ owner_; } ;
typedef TYPE_1__ WebPChunk ;


 int WEBP_MUX_MEMORY_ERROR ;
 int WEBP_MUX_NOT_FOUND ;
 int WEBP_MUX_OK ;
 scalar_t__ WebPSafeMalloc (unsigned long long,int) ;
 int assert (int ) ;

WebPMuxError ChunkSetHead(WebPChunk* const chunk,
                          WebPChunk** const chunk_list) {
  WebPChunk* new_chunk;

  assert(chunk_list != ((void*)0));
  if (*chunk_list != ((void*)0)) {
    return WEBP_MUX_NOT_FOUND;
  }

  new_chunk = (WebPChunk*)WebPSafeMalloc(1ULL, sizeof(*new_chunk));
  if (new_chunk == ((void*)0)) return WEBP_MUX_MEMORY_ERROR;
  *new_chunk = *chunk;
  chunk->owner_ = 0;
  new_chunk->next_ = ((void*)0);
  *chunk_list = new_chunk;
  return WEBP_MUX_OK;
}
