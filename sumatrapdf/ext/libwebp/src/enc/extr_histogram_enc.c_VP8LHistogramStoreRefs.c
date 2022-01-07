
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cur_pos; } ;
typedef TYPE_1__ VP8LRefsCursor ;
typedef int VP8LHistogram ;
typedef int VP8LBackwardRefs ;


 int VP8LHistogramAddSinglePixOrCopy (int * const,int ,int *,int ) ;
 TYPE_1__ VP8LRefsCursorInit (int const* const) ;
 int VP8LRefsCursorNext (TYPE_1__*) ;
 scalar_t__ VP8LRefsCursorOk (TYPE_1__*) ;

void VP8LHistogramStoreRefs(const VP8LBackwardRefs* const refs,
                            VP8LHistogram* const histo) {
  VP8LRefsCursor c = VP8LRefsCursorInit(refs);
  while (VP8LRefsCursorOk(&c)) {
    VP8LHistogramAddSinglePixOrCopy(histo, c.cur_pos, ((void*)0), 0);
    VP8LRefsCursorNext(&c);
  }
}
