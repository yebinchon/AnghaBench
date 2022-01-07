
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next_; } ;
typedef TYPE_1__ VP8Tokens ;
struct TYPE_7__ {int page_size_; TYPE_1__* pages_; } ;
typedef TYPE_2__ VP8TBuffer ;


 int VP8TBufferInit (TYPE_2__* const,int ) ;
 int WebPSafeFree (TYPE_1__*) ;

void VP8TBufferClear(VP8TBuffer* const b) {
  if (b != ((void*)0)) {
    VP8Tokens* p = b->pages_;
    while (p != ((void*)0)) {
      VP8Tokens* const next = p->next_;
      WebPSafeFree(p);
      p = next;
    }
    VP8TBufferInit(b, b->page_size_);
  }
}
