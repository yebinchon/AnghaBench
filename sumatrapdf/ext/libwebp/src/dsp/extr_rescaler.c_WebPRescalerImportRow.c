
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int x_expand; } ;
typedef TYPE_1__ WebPRescaler ;


 int WebPRescalerImportRowExpand (TYPE_1__* const,int const*) ;
 int WebPRescalerImportRowShrink (TYPE_1__* const,int const*) ;
 int WebPRescalerInputDone (TYPE_1__* const) ;
 int assert (int) ;

void WebPRescalerImportRow(WebPRescaler* const wrk, const uint8_t* src) {
  assert(!WebPRescalerInputDone(wrk));
  if (!wrk->x_expand) {
    WebPRescalerImportRowShrink(wrk, src);
  } else {
    WebPRescalerImportRowExpand(wrk, src);
  }
}
