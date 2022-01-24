#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {int stride; int /*<<< orphan*/ * rgba; } ;
typedef  TYPE_2__ WebPRGBABuffer ;
struct TYPE_12__ {TYPE_2__ RGBA; } ;
struct TYPE_14__ {scalar_t__ height; int /*<<< orphan*/  colorspace; TYPE_1__ u; } ;
typedef  TYPE_3__ WebPDecBuffer ;
struct TYPE_15__ {int width_; int last_row_; int last_out_row_; int height_; TYPE_3__* output_; scalar_t__ argb_cache_; TYPE_5__* io_; int /*<<< orphan*/ * pixels_; } ;
typedef  TYPE_4__ VP8LDecoder ;
struct TYPE_16__ {int crop_bottom; int width; int /*<<< orphan*/  mb_h; int /*<<< orphan*/  mb_w; scalar_t__ use_scaling; } ;
typedef  TYPE_5__ VP8Io ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__* const,int,int const,int /*<<< orphan*/  const* const) ; 
 int FUNC1 (TYPE_4__* const,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ * const,int) ; 
 int const FUNC2 (TYPE_4__* const,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ * const,int) ; 
 int const FUNC4 (TYPE_4__* const,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const NUM_ARGB_CACHE_ROWS ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__* const,int,int,int /*<<< orphan*/ **,int const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(VP8LDecoder* const dec, int row) {
  const uint32_t* const rows = dec->pixels_ + dec->width_ * dec->last_row_;
  const int num_rows = row - dec->last_row_;

  FUNC7(row <= dec->io_->crop_bottom);
  // We can't process more than NUM_ARGB_CACHE_ROWS at a time (that's the size
  // of argb_cache_), but we currently don't need more than that.
  FUNC7(num_rows <= NUM_ARGB_CACHE_ROWS);
  if (num_rows > 0) {    // Emit output.
    VP8Io* const io = dec->io_;
    uint8_t* rows_data = (uint8_t*)dec->argb_cache_;
    const int in_stride = io->width * sizeof(uint32_t);  // in unit of RGBA
    FUNC0(dec, dec->last_row_, num_rows, rows);
    if (!FUNC5(io, dec->last_row_, row, &rows_data, in_stride)) {
      // Nothing to output (this time).
    } else {
      const WebPDecBuffer* const output = dec->output_;
      if (FUNC6(output->colorspace)) {  // convert to RGBA
        const WebPRGBABuffer* const buf = &output->u.RGBA;
        uint8_t* const rgba = buf->rgba + dec->last_out_row_ * buf->stride;
        const int num_rows_out =
#if !defined(WEBP_REDUCE_SIZE)
         io->use_scaling ?
            FUNC1(dec, rows_data, in_stride, io->mb_h,
                                 rgba, buf->stride) :
#endif  // WEBP_REDUCE_SIZE
            FUNC3(output->colorspace, rows_data, in_stride,
                     io->mb_w, io->mb_h, rgba, buf->stride);
        // Update 'last_out_row_'.
        dec->last_out_row_ += num_rows_out;
      } else {                              // convert to YUVA
        dec->last_out_row_ = io->use_scaling ?
            FUNC2(dec, rows_data, in_stride, io->mb_h) :
            FUNC4(dec, rows_data, in_stride, io->mb_w, io->mb_h);
      }
      FUNC7(dec->last_out_row_ <= output->height);
    }
  }

  // Update 'last_row_'.
  dec->last_row_ = row;
  FUNC7(dec->last_row_ <= dec->height_);
}