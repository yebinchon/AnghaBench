
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ tag_; struct TYPE_3__* next_; } ;
typedef TYPE_1__ WebPChunk ;


 scalar_t__ NIL_TAG ;

__attribute__((used)) static int CountChunks(const WebPChunk* const chunk_list, uint32_t tag) {
  int count = 0;
  const WebPChunk* current;
  for (current = chunk_list; current != ((void*)0); current = current->next_) {
    if (tag == NIL_TAG || current->tag_ == tag) {
      count++;
    }
  }
  return count;
}
