
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int coeff_type; int first; int costs; int stats; int prob; } ;
typedef TYPE_2__ VP8Residual ;
struct TYPE_6__ {int * remapped_costs_; int * stats_; int * coeffs_; } ;
struct TYPE_8__ {TYPE_1__ proba_; } ;
typedef TYPE_3__ VP8Encoder ;



void VP8InitResidual(int first, int coeff_type,
                     VP8Encoder* const enc, VP8Residual* const res) {
  res->coeff_type = coeff_type;
  res->prob = enc->proba_.coeffs_[coeff_type];
  res->stats = enc->proba_.stats_[coeff_type];
  res->costs = enc->proba_.remapped_costs_[coeff_type];
  res->first = first;
}
