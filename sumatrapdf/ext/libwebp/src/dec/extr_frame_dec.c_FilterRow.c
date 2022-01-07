
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mb_y_; int filter_row_; } ;
struct TYPE_6__ {int tl_mb_x_; int br_mb_x_; TYPE_1__ thread_ctx_; } ;
typedef TYPE_2__ VP8Decoder ;


 int DoFilter (TYPE_2__ const* const,int,int const) ;
 int assert (int ) ;

__attribute__((used)) static void FilterRow(const VP8Decoder* const dec) {
  int mb_x;
  const int mb_y = dec->thread_ctx_.mb_y_;
  assert(dec->thread_ctx_.filter_row_);
  for (mb_x = dec->tl_mb_x_; mb_x < dec->br_mb_x_; ++mb_x) {
    DoFilter(dec, mb_x, mb_y);
  }
}
