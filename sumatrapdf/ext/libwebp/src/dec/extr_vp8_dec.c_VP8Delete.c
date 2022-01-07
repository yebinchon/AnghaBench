
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8Decoder ;


 int VP8Clear (int * const) ;
 int WebPSafeFree (int * const) ;

void VP8Delete(VP8Decoder* const dec) {
  if (dec != ((void*)0)) {
    VP8Clear(dec);
    WebPSafeFree(dec);
  }
}
