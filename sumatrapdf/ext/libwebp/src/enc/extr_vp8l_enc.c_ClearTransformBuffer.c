
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ transform_mem_size_; int * transform_mem_; } ;
typedef TYPE_1__ VP8LEncoder ;


 int WebPSafeFree (int *) ;

__attribute__((used)) static void ClearTransformBuffer(VP8LEncoder* const enc) {
  WebPSafeFree(enc->transform_mem_);
  enc->transform_mem_ = ((void*)0);
  enc->transform_mem_size_ = 0;
}
