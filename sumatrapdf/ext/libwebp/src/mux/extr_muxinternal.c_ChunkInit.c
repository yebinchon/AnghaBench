
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag_; } ;
typedef TYPE_1__ WebPChunk ;


 int NIL_TAG ;
 int assert (TYPE_1__* const) ;
 int memset (TYPE_1__* const,int ,int) ;

void ChunkInit(WebPChunk* const chunk) {
  assert(chunk);
  memset(chunk, 0, sizeof(*chunk));
  chunk->tag_ = NIL_TAG;
}
