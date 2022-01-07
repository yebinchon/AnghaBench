
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uv_alpha; scalar_t__ alpha; scalar_t__* alphas; } ;
typedef TYPE_1__ SegmentJob ;


 int MAX_ALPHA ;

__attribute__((used)) static void MergeJobs(const SegmentJob* const src, SegmentJob* const dst) {
  int i;
  for (i = 0; i <= MAX_ALPHA; ++i) dst->alphas[i] += src->alphas[i];
  dst->alpha += src->alpha;
  dst->uv_alpha += src->uv_alpha;
}
