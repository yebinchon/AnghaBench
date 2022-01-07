
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int page_size_; scalar_t__ error_; scalar_t__ left_; int * pages_; int ** last_page_; int * tokens_; } ;
typedef TYPE_1__ VP8TBuffer ;


 int MIN_PAGE_SIZE ;

void VP8TBufferInit(VP8TBuffer* const b, int page_size) {
  b->tokens_ = ((void*)0);
  b->pages_ = ((void*)0);
  b->last_page_ = &b->pages_;
  b->left_ = 0;
  b->page_size_ = (page_size < MIN_PAGE_SIZE) ? MIN_PAGE_SIZE : page_size;
  b->error_ = 0;
}
