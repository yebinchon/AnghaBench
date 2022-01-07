
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__*** lf_stats_; } ;
typedef TYPE_1__ VP8EncIterator ;


 int MAX_LF_LEVELS ;
 int NUM_MB_SEGMENTS ;
 int VP8SSIMDspInit () ;

void VP8InitFilter(VP8EncIterator* const it) {

  if (it->lf_stats_ != ((void*)0)) {
    int s, i;
    for (s = 0; s < NUM_MB_SEGMENTS; s++) {
      for (i = 0; i < MAX_LF_LEVELS; i++) {
        (*it->lf_stats_)[s][i] = 0;
      }
    }
    VP8SSIMDspInit();
  }



}
