
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * block_count; int coded_size; int ** residual_bytes; int * segment_quant; int * segment_level; } ;
typedef TYPE_2__ WebPAuxStats ;
struct TYPE_9__ {int percent_; TYPE_4__* pic_; int * block_count_; int coded_size_; int ** residual_bytes_; TYPE_1__* dqm_; } ;
typedef TYPE_3__ VP8Encoder ;
struct TYPE_10__ {TYPE_2__* stats; } ;
struct TYPE_7__ {int quant_; int fstrength_; } ;


 int FinalizePSNR (TYPE_3__* const) ;
 int NUM_MB_SEGMENTS ;
 int WebPReportProgress (TYPE_4__*,int,int *) ;

__attribute__((used)) static void StoreStats(VP8Encoder* const enc) {

  WebPAuxStats* const stats = enc->pic_->stats;
  if (stats != ((void*)0)) {
    int i, s;
    for (i = 0; i < NUM_MB_SEGMENTS; ++i) {
      stats->segment_level[i] = enc->dqm_[i].fstrength_;
      stats->segment_quant[i] = enc->dqm_[i].quant_;
      for (s = 0; s <= 2; ++s) {
        stats->residual_bytes[s][i] = enc->residual_bytes_[s][i];
      }
    }
    FinalizePSNR(enc);
    stats->coded_size = enc->coded_size_;
    for (i = 0; i < 3; ++i) {
      stats->block_count[i] = enc->block_count_[i];
    }
  }



}
