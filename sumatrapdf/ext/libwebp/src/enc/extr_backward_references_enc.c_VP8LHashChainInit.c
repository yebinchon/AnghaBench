
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int size_; int * offset_length_; } ;
typedef TYPE_1__ VP8LHashChain ;


 scalar_t__ WebPSafeMalloc (int,int) ;
 int assert (int) ;

int VP8LHashChainInit(VP8LHashChain* const p, int size) {
  assert(p->size_ == 0);
  assert(p->offset_length_ == ((void*)0));
  assert(size > 0);
  p->offset_length_ =
      (uint32_t*)WebPSafeMalloc(size, sizeof(*p->offset_length_));
  if (p->offset_length_ == ((void*)0)) return 0;
  p->size_ = size;

  return 1;
}
