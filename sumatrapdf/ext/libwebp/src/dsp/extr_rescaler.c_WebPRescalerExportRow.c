
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ y_accum; scalar_t__ src_height; scalar_t__ dst_height; int x_add; int src_width; int dst_width; int num_channels; scalar_t__ y_add; int dst_y; scalar_t__ dst_stride; scalar_t__* dst; scalar_t__* irow; scalar_t__ fxy_scale; scalar_t__ y_expand; } ;
typedef TYPE_1__ WebPRescaler ;


 int WebPRescalerExportRowExpand (TYPE_1__* const) ;
 int WebPRescalerExportRowShrink (TYPE_1__* const) ;
 int WebPRescalerOutputDone (TYPE_1__* const) ;
 int assert (int) ;

void WebPRescalerExportRow(WebPRescaler* const wrk) {
  if (wrk->y_accum <= 0) {
    assert(!WebPRescalerOutputDone(wrk));
    if (wrk->y_expand) {
      WebPRescalerExportRowExpand(wrk);
    } else if (wrk->fxy_scale) {
      WebPRescalerExportRowShrink(wrk);
    } else {
      int i;
      assert(wrk->src_height == wrk->dst_height && wrk->x_add == 1);
      assert(wrk->src_width == 1 && wrk->dst_width <= 2);
      for (i = 0; i < wrk->num_channels * wrk->dst_width; ++i) {
        wrk->dst[i] = wrk->irow[i];
        wrk->irow[i] = 0;
      }
    }
    wrk->y_accum += wrk->y_add;
    wrk->dst += wrk->dst_stride;
    ++wrk->dst_y;
  }
}
