
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPChunk ;


 int * ChunkDelete (int *) ;

void ChunkListDelete(WebPChunk** const chunk_list) {
  while (*chunk_list != ((void*)0)) {
    *chunk_list = ChunkDelete(*chunk_list);
  }
}
