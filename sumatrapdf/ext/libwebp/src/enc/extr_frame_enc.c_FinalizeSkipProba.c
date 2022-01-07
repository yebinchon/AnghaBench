
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nb_skip_; scalar_t__ skip_proba_; int use_skip_proba_; } ;
struct TYPE_4__ {int mb_w_; int mb_h_; TYPE_2__ proba_; } ;
typedef TYPE_1__ VP8Encoder ;
typedef TYPE_2__ VP8EncProba ;


 scalar_t__ CalcSkipProba (int const,int const) ;
 scalar_t__ SKIP_PROBA_THRESHOLD ;
 int const VP8BitCost (int,scalar_t__) ;

__attribute__((used)) static int FinalizeSkipProba(VP8Encoder* const enc) {
  VP8EncProba* const proba = &enc->proba_;
  const int nb_mbs = enc->mb_w_ * enc->mb_h_;
  const int nb_events = proba->nb_skip_;
  int size;
  proba->skip_proba_ = CalcSkipProba(nb_events, nb_mbs);
  proba->use_skip_proba_ = (proba->skip_proba_ < SKIP_PROBA_THRESHOLD);
  size = 256;
  if (proba->use_skip_proba_) {
    size += nb_events * VP8BitCost(1, proba->skip_proba_)
         + (nb_mbs - nb_events) * VP8BitCost(0, proba->skip_proba_);
    size += 8 * 256;
  }
  return size;
}
