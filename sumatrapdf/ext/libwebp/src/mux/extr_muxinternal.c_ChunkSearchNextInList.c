
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ tag_; struct TYPE_4__* next_; } ;
typedef TYPE_1__ WebPChunk ;



__attribute__((used)) static WebPChunk* ChunkSearchNextInList(WebPChunk* chunk, uint32_t tag) {
  while (chunk != ((void*)0) && chunk->tag_ != tag) {
    chunk = chunk->next_;
  }
  return chunk;
}
