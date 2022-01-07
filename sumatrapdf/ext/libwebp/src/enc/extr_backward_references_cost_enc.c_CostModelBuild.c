
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int cur_pos; } ;
typedef TYPE_1__ VP8LRefsCursor ;
struct TYPE_13__ {int distance_; int alpha_; int blue_; int red_; int literal_; int palette_code_bits_; } ;
typedef TYPE_2__ VP8LHistogram ;
typedef int VP8LBackwardRefs ;
struct TYPE_14__ {int distance_; int alpha_; int blue_; int red_; int literal_; } ;
typedef TYPE_3__ CostModel ;


 int ConvertPopulationCountTableToBitEstimates (int ,int ,int ) ;
 int NUM_DISTANCE_CODES ;
 int VALUES_IN_BYTE ;
 TYPE_2__* VP8LAllocateHistogram (int) ;
 int VP8LDistanceToPlaneCode ;
 int VP8LFreeHistogram (TYPE_2__* const) ;
 int VP8LHistogramAddSinglePixOrCopy (TYPE_2__* const,int ,int ,int) ;
 int VP8LHistogramInit (TYPE_2__* const,int,int) ;
 int VP8LHistogramNumCodes (int ) ;
 TYPE_1__ VP8LRefsCursorInit (int const* const) ;
 int VP8LRefsCursorNext (TYPE_1__*) ;
 scalar_t__ VP8LRefsCursorOk (TYPE_1__*) ;

__attribute__((used)) static int CostModelBuild(CostModel* const m, int xsize, int cache_bits,
                          const VP8LBackwardRefs* const refs) {
  int ok = 0;
  VP8LRefsCursor c = VP8LRefsCursorInit(refs);
  VP8LHistogram* const histo = VP8LAllocateHistogram(cache_bits);
  if (histo == ((void*)0)) goto Error;



  VP8LHistogramInit(histo, cache_bits, 1);
  while (VP8LRefsCursorOk(&c)) {
    VP8LHistogramAddSinglePixOrCopy(histo, c.cur_pos, VP8LDistanceToPlaneCode,
                                    xsize);
    VP8LRefsCursorNext(&c);
  }

  ConvertPopulationCountTableToBitEstimates(
      VP8LHistogramNumCodes(histo->palette_code_bits_),
      histo->literal_, m->literal_);
  ConvertPopulationCountTableToBitEstimates(
      VALUES_IN_BYTE, histo->red_, m->red_);
  ConvertPopulationCountTableToBitEstimates(
      VALUES_IN_BYTE, histo->blue_, m->blue_);
  ConvertPopulationCountTableToBitEstimates(
      VALUES_IN_BYTE, histo->alpha_, m->alpha_);
  ConvertPopulationCountTableToBitEstimates(
      NUM_DISTANCE_CODES, histo->distance_, m->distance_);
  ok = 1;

 Error:
  VP8LFreeHistogram(histo);
  return ok;
}
