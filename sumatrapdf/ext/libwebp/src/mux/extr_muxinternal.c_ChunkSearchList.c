
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {struct TYPE_6__* next_; } ;
typedef TYPE_1__ WebPChunk ;


 TYPE_1__* ChunkSearchNextInList (TYPE_1__*,scalar_t__) ;

WebPChunk* ChunkSearchList(WebPChunk* first, uint32_t nth, uint32_t tag) {
  uint32_t iter = nth;
  first = ChunkSearchNextInList(first, tag);
  if (first == ((void*)0)) return ((void*)0);

  while (--iter != 0) {
    WebPChunk* next_chunk = ChunkSearchNextInList(first->next_, tag);
    if (next_chunk == ((void*)0)) break;
    first = next_chunk;
  }
  return ((nth > 0) && (iter > 0)) ? ((void*)0) : first;
}
