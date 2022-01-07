
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ x_; int preds_; int mb_; int nz_; int y_top_; int uv_top_; scalar_t__ count_down_; int y_; TYPE_1__* enc_; } ;
typedef TYPE_2__ VP8EncIterator ;
struct TYPE_5__ {scalar_t__ mb_w_; } ;


 int VP8IteratorSetRow (TYPE_2__* const,int ) ;

int VP8IteratorNext(VP8EncIterator* const it) {
  if (++it->x_ == it->enc_->mb_w_) {
    VP8IteratorSetRow(it, ++it->y_);
  } else {
    it->preds_ += 4;
    it->mb_ += 1;
    it->nz_ += 1;
    it->y_top_ += 16;
    it->uv_top_ += 16;
  }
  return (0 < --it->count_down_);
}
