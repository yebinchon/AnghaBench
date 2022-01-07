
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTreeGroup ;


 int WebPSafeFree (int * const) ;

void VP8LHtreeGroupsFree(HTreeGroup* const htree_groups) {
  if (htree_groups != ((void*)0)) {
    WebPSafeFree(htree_groups);
  }
}
