
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int score; scalar_t__ nz; scalar_t__ H; scalar_t__ R; scalar_t__ SD; scalar_t__ D; } ;
typedef TYPE_1__ VP8ModeScore ;


 int MAX_COST ;

__attribute__((used)) static void InitScore(VP8ModeScore* const rd) {
  rd->D = 0;
  rd->SD = 0;
  rd->R = 0;
  rd->H = 0;
  rd->nz = 0;
  rd->score = MAX_COST;
}
