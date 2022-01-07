
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int GetResidual (int,int,int*,int*,int *,int const,int,int,int,int,int,int,int* const) ;
 int MaxDiffsForRow (int,int,int* const,int *,int) ;
 int PredictBatch (int ,int ,int,int,int*,int*,int* const) ;
 int VP8LSubSampleSize (int,int) ;
 int kPredLowEffort ;
 int memcpy (int*,int* const,int) ;

__attribute__((used)) static void CopyImageWithPrediction(int width, int height,
                                    int bits, uint32_t* const modes,
                                    uint32_t* const argb_scratch,
                                    uint32_t* const argb,
                                    int low_effort, int max_quantization,
                                    int exact, int used_subtract_green) {
  const int tiles_per_row = VP8LSubSampleSize(width, bits);



  uint32_t* upper_row = argb_scratch;
  uint32_t* current_row = upper_row + width + 1;
  uint8_t* current_max_diffs = (uint8_t*)(current_row + width + 1);



  int y;

  for (y = 0; y < height; ++y) {
    int x;
    uint32_t* const tmp32 = upper_row;
    upper_row = current_row;
    current_row = tmp32;
    memcpy(current_row, argb + y * width,
           sizeof(*argb) * (width + (y + 1 < height)));

    if (low_effort) {
      PredictBatch(kPredLowEffort, 0, y, width, current_row, upper_row,
                   argb + y * width);
    } else {
      for (x = 0; x < width;) {
        const int mode =
            (modes[(y >> bits) * tiles_per_row + (x >> bits)] >> 8) & 0xff;
        int x_end = x + (1 << bits);
        if (x_end > width) x_end = width;
        GetResidual(width, height, upper_row, current_row, current_max_diffs,
                    mode, x, x_end, y, max_quantization, exact,
                    used_subtract_green, argb + y * width + x);
        x = x_end;
      }
    }
  }
}
