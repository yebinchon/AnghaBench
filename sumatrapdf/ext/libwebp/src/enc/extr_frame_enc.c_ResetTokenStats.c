
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int stats_; } ;
struct TYPE_4__ {TYPE_2__ proba_; } ;
typedef TYPE_1__ VP8Encoder ;
typedef TYPE_2__ VP8EncProba ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void ResetTokenStats(VP8Encoder* const enc) {
  VP8EncProba* const proba = &enc->proba_;
  memset(proba->stats_, 0, sizeof(proba->stats_));
}
