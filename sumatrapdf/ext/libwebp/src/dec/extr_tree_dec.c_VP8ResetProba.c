
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int segments_; } ;
typedef TYPE_1__ VP8Proba ;


 int memset (int ,unsigned int,int) ;

void VP8ResetProba(VP8Proba* const proba) {
  memset(proba->segments_, 255u, sizeof(proba->segments_));

}
