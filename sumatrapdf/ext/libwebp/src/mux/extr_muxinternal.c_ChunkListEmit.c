
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {struct TYPE_4__* next_; } ;
typedef TYPE_1__ WebPChunk ;


 int * ChunkEmit (TYPE_1__ const*,int *) ;

uint8_t* ChunkListEmit(const WebPChunk* chunk_list, uint8_t* dst) {
  while (chunk_list != ((void*)0)) {
    dst = ChunkEmit(chunk_list, dst);
    chunk_list = chunk_list->next_;
  }
  return dst;
}
