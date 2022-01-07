
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int histo_stack_1 ;


 int GetMin (int const,int) ;
 int GetResidual (int,int,int*,int*,int * const,int,int const,int const,int const,int,int,int,int*) ;
 float MAX_DIFF_COST ;
 int MAX_TRANSFORM_BITS ;
 int MaxDiffsForRow (int const,int,int const* const,int * const,int) ;
 float PredictionCostSpatialHistogram (int const**,int const**) ;
 int UpdateHisto (int**,int) ;
 int VP8LSubSampleSize (int,int) ;
 int assert (int) ;
 scalar_t__ kSpatialPredictorBias ;
 int memcpy (int*,int const* const,int) ;
 int memset (int**,int ,int) ;

__attribute__((used)) static int GetBestPredictorForTile(int width, int height,
                                   int tile_x, int tile_y, int bits,
                                   int accumulated[4][256],
                                   uint32_t* const argb_scratch,
                                   const uint32_t* const argb,
                                   int max_quantization,
                                   int exact, int used_subtract_green,
                                   const uint32_t* const modes) {
  const int kNumPredModes = 14;
  const int start_x = tile_x << bits;
  const int start_y = tile_y << bits;
  const int tile_size = 1 << bits;
  const int max_y = GetMin(tile_size, height - start_y);
  const int max_x = GetMin(tile_size, width - start_x);

  const int have_left = (start_x > 0);


  const int context_start_x = start_x - have_left;



  const int tiles_per_row = VP8LSubSampleSize(width, bits);

  const int left_mode = (tile_x > 0) ?
      (modes[tile_y * tiles_per_row + tile_x - 1] >> 8) & 0xff : 0xff;
  const int above_mode = (tile_y > 0) ?
      (modes[(tile_y - 1) * tiles_per_row + tile_x] >> 8) & 0xff : 0xff;



  uint32_t* upper_row = argb_scratch;
  uint32_t* current_row = upper_row + width + 1;
  uint8_t* const max_diffs = (uint8_t*)(current_row + width + 1);
  float best_diff = MAX_DIFF_COST;
  int best_mode = 0;
  int mode;
  int histo_stack_1[4][256];
  int histo_stack_2[4][256];

  int (*histo_argb)[256] = histo_stack_1;
  int (*best_histo)[256] = histo_stack_2;
  int i, j;
  uint32_t residuals[1 << MAX_TRANSFORM_BITS];
  assert(bits <= MAX_TRANSFORM_BITS);
  assert(max_x <= (1 << MAX_TRANSFORM_BITS));

  for (mode = 0; mode < kNumPredModes; ++mode) {
    float cur_diff;
    int relative_y;
    memset(histo_argb, 0, sizeof(histo_stack_1));
    if (start_y > 0) {




      memcpy(current_row + context_start_x,
             argb + (start_y - 1) * width + context_start_x,
             sizeof(*argb) * (max_x + have_left + 1));
    }
    for (relative_y = 0; relative_y < max_y; ++relative_y) {
      const int y = start_y + relative_y;
      int relative_x;
      uint32_t* tmp = upper_row;
      upper_row = current_row;
      current_row = tmp;




      memcpy(current_row + context_start_x,
             argb + y * width + context_start_x,
             sizeof(*argb) * (max_x + have_left + (y + 1 < height)));







      GetResidual(width, height, upper_row, current_row, max_diffs, mode,
                  start_x, start_x + max_x, y, max_quantization, exact,
                  used_subtract_green, residuals);
      for (relative_x = 0; relative_x < max_x; ++relative_x) {
        UpdateHisto(histo_argb, residuals[relative_x]);
      }
    }
    cur_diff = PredictionCostSpatialHistogram(
        (const int (*)[256])accumulated, (const int (*)[256])histo_argb);

    if (mode == left_mode) cur_diff -= kSpatialPredictorBias;
    if (mode == above_mode) cur_diff -= kSpatialPredictorBias;

    if (cur_diff < best_diff) {
      int (*tmp)[256] = histo_argb;
      histo_argb = best_histo;
      best_histo = tmp;
      best_diff = cur_diff;
      best_mode = mode;
    }
  }

  for (i = 0; i < 4; i++) {
    for (j = 0; j < 256; j++) {
      accumulated[i][j] += best_histo[i][j];
    }
  }

  return best_mode;
}
