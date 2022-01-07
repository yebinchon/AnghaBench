
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint32_t ;
typedef int VP8LTransform ;
struct TYPE_3__ {int next_transform_; int width_; int * transforms_; int const* argb_cache_; } ;
typedef TYPE_1__ VP8LDecoder ;


 int VP8LInverseTransform (int * const,int,int const,int const*,int const* const) ;
 int memcpy (int const* const,int const*,int const) ;

__attribute__((used)) static void ApplyInverseTransforms(VP8LDecoder* const dec,
                                   int start_row, int num_rows,
                                   const uint32_t* const rows) {
  int n = dec->next_transform_;
  const int cache_pixs = dec->width_ * num_rows;
  const int end_row = start_row + num_rows;
  const uint32_t* rows_in = rows;
  uint32_t* const rows_out = dec->argb_cache_;


  while (n-- > 0) {
    VP8LTransform* const transform = &dec->transforms_[n];
    VP8LInverseTransform(transform, start_row, end_row, rows_in, rows_out);
    rows_in = rows_out;
  }
  if (rows_in != rows_out) {

    memcpy(rows_out, rows_in, cache_pixs * sizeof(*rows_out));
  }
}
