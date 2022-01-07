
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int palette_code_bits_; int bit_cost_; int literal_cost_; int red_cost_; int blue_cost_; int is_used_; scalar_t__ trivial_symbol_; } ;
typedef TYPE_1__ VP8LHistogram ;


 int HistogramClear (TYPE_1__* const) ;
 int memset (int ,int ,int) ;

void VP8LHistogramInit(VP8LHistogram* const p, int palette_code_bits,
                       int init_arrays) {
  p->palette_code_bits_ = palette_code_bits;
  if (init_arrays) {
    HistogramClear(p);
  } else {
    p->trivial_symbol_ = 0;
    p->bit_cost_ = 0.;
    p->literal_cost_ = 0.;
    p->red_cost_ = 0.;
    p->blue_cost_ = 0.;
    memset(p->is_used_, 0, sizeof(p->is_used_));
  }
}
