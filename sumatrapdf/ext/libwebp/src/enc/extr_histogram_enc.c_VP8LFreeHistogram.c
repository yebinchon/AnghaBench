
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8LHistogram ;


 int WebPSafeFree (int * const) ;

void VP8LFreeHistogram(VP8LHistogram* const histo) {
  WebPSafeFree(histo);
}
