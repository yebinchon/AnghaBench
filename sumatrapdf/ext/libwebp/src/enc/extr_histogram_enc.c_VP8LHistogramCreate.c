
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int palette_code_bits_; } ;
typedef TYPE_1__ VP8LHistogram ;
typedef int VP8LBackwardRefs ;


 int HistogramClear (TYPE_1__* const) ;
 int VP8LHistogramStoreRefs (int const* const,TYPE_1__* const) ;

void VP8LHistogramCreate(VP8LHistogram* const p,
                         const VP8LBackwardRefs* const refs,
                         int palette_code_bits) {
  if (palette_code_bits >= 0) {
    p->palette_code_bits_ = palette_code_bits;
  }
  HistogramClear(p);
  VP8LHistogramStoreRefs(refs, p);
}
