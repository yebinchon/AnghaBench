
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_; } ;
typedef TYPE_1__ WebPChunk ;


 scalar_t__ ChunkDiskSize (TYPE_1__ const*) ;

size_t ChunkListDiskSize(const WebPChunk* chunk_list) {
  size_t size = 0;
  while (chunk_list != ((void*)0)) {
    size += ChunkDiskSize(chunk_list);
    chunk_list = chunk_list->next_;
  }
  return size;
}
