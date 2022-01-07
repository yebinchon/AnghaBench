
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int blue_cost_; int red_cost_; int literal_cost_; } ;
typedef TYPE_1__ VP8LHistogram ;
struct TYPE_6__ {int blue_max_; int blue_min_; int red_max_; int red_min_; int literal_max_; int literal_min_; } ;
typedef TYPE_2__ DominantCostRange ;


 int BIN_SIZE ;
 int GetBinIdForEntropy (int ,int ,int ) ;
 int NUM_PARTITIONS ;
 int assert (int) ;

__attribute__((used)) static int GetHistoBinIndex(const VP8LHistogram* const h,
                            const DominantCostRange* const c, int low_effort) {
  int bin_id = GetBinIdForEntropy(c->literal_min_, c->literal_max_,
                                  h->literal_cost_);
  assert(bin_id < NUM_PARTITIONS);
  if (!low_effort) {
    bin_id = bin_id * NUM_PARTITIONS
           + GetBinIdForEntropy(c->red_min_, c->red_max_, h->red_cost_);
    bin_id = bin_id * NUM_PARTITIONS
           + GetBinIdForEntropy(c->blue_min_, c->blue_max_, h->blue_cost_);
    assert(bin_id < BIN_SIZE);
  }
  return bin_id;
}
