
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ literal_cost_; scalar_t__ red_cost_; scalar_t__ blue_cost_; } ;
typedef TYPE_1__ VP8LHistogram ;
struct TYPE_6__ {scalar_t__ literal_max_; scalar_t__ literal_min_; scalar_t__ red_max_; scalar_t__ red_min_; scalar_t__ blue_max_; scalar_t__ blue_min_; } ;
typedef TYPE_2__ DominantCostRange ;



__attribute__((used)) static void UpdateDominantCostRange(
    const VP8LHistogram* const h, DominantCostRange* const c) {
  if (c->literal_max_ < h->literal_cost_) c->literal_max_ = h->literal_cost_;
  if (c->literal_min_ > h->literal_cost_) c->literal_min_ = h->literal_cost_;
  if (c->red_max_ < h->red_cost_) c->red_max_ = h->red_cost_;
  if (c->red_min_ > h->red_cost_) c->red_min_ = h->red_cost_;
  if (c->blue_max_ < h->blue_cost_) c->blue_max_ = h->blue_cost_;
  if (c->blue_min_ > h->blue_cost_) c->blue_min_ = h->blue_cost_;
}
