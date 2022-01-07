
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ rescaler_t ;
struct TYPE_5__ {int num_channels; int dst_width; scalar_t__ y_sub; int y_accum; int src_y; scalar_t__* frow; scalar_t__* irow; scalar_t__ y_expand; } ;
typedef TYPE_1__ WebPRescaler ;


 int WebPRescalerHasPendingOutput (TYPE_1__* const) ;
 int WebPRescalerImportRow (TYPE_1__* const,int const*) ;

int WebPRescalerImport(WebPRescaler* const wrk, int num_lines,
                       const uint8_t* src, int src_stride) {
  int total_imported = 0;
  while (total_imported < num_lines && !WebPRescalerHasPendingOutput(wrk)) {
    if (wrk->y_expand) {
      rescaler_t* const tmp = wrk->irow;
      wrk->irow = wrk->frow;
      wrk->frow = tmp;
    }
    WebPRescalerImportRow(wrk, src);
    if (!wrk->y_expand) {
      int x;
      for (x = 0; x < wrk->num_channels * wrk->dst_width; ++x) {
        wrk->irow[x] += wrk->frow[x];
      }
    }
    ++wrk->src_y;
    src += src_stride;
    ++total_imported;
    wrk->y_accum -= wrk->y_sub;
  }
  return total_imported;
}
