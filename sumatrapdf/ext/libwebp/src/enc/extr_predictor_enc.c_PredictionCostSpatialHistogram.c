
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PredictionCostSpatial (int const*,int,double const) ;
 scalar_t__ VP8LCombinedShannonEntropy (int const*,int const*) ;

__attribute__((used)) static float PredictionCostSpatialHistogram(const int accumulated[4][256],
                                            const int tile[4][256]) {
  int i;
  double retval = 0;
  for (i = 0; i < 4; ++i) {
    const double kExpValue = 0.94;
    retval += PredictionCostSpatial(tile[i], 1, kExpValue);
    retval += VP8LCombinedShannonEntropy(tile[i], accumulated[i]);
  }
  return (float)retval;
}
