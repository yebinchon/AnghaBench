
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ score; int nz; scalar_t__ H; scalar_t__ R; scalar_t__ SD; scalar_t__ D; } ;
typedef TYPE_1__ VP8ModeScore ;



__attribute__((used)) static void AddScore(VP8ModeScore* const dst, const VP8ModeScore* const src) {
  dst->D += src->D;
  dst->SD += src->SD;
  dst->R += src->R;
  dst->H += src->H;
  dst->nz |= src->nz;
  dst->score += src->score;
}
