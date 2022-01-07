
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count_down_; int count_down0_; } ;
typedef TYPE_1__ VP8EncIterator ;



void VP8IteratorSetCountDown(VP8EncIterator* const it, int count_down) {
  it->count_down_ = it->count_down0_ = count_down;
}
