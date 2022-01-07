
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ distance_; scalar_t__ literal_; int * is_used_; scalar_t__ alpha_; scalar_t__ blue_; scalar_t__ red_; int palette_code_bits_; } ;
typedef TYPE_1__ VP8LHistogram ;


 scalar_t__ NUM_DISTANCE_CODES ;
 scalar_t__ NUM_LENGTH_CODES ;
 scalar_t__ NUM_LITERAL_CODES ;
 double PopulationCost (scalar_t__,scalar_t__,int *,int *) ;
 double VP8LExtraCost (scalar_t__,scalar_t__) ;
 scalar_t__ VP8LHistogramNumCodes (int ) ;

double VP8LHistogramEstimateBits(VP8LHistogram* const p) {
  return
      PopulationCost(p->literal_, VP8LHistogramNumCodes(p->palette_code_bits_),
                     ((void*)0), &p->is_used_[0])
      + PopulationCost(p->red_, NUM_LITERAL_CODES, ((void*)0), &p->is_used_[1])
      + PopulationCost(p->blue_, NUM_LITERAL_CODES, ((void*)0), &p->is_used_[2])
      + PopulationCost(p->alpha_, NUM_LITERAL_CODES, ((void*)0), &p->is_used_[3])
      + PopulationCost(p->distance_, NUM_DISTANCE_CODES, ((void*)0), &p->is_used_[4])
      + VP8LExtraCost(p->literal_ + NUM_LITERAL_CODES, NUM_LENGTH_CODES)
      + VP8LExtraCost(p->distance_, NUM_DISTANCE_CODES);
}
