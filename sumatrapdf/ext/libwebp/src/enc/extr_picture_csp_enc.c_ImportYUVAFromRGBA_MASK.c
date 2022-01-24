#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int width; int height; int a_stride; int y_stride; int /*<<< orphan*/  uv_stride; int /*<<< orphan*/ * a; int /*<<< orphan*/ * v; int /*<<< orphan*/ * u; int /*<<< orphan*/ * y; scalar_t__ use_argb; int /*<<< orphan*/  colorspace; } ;
typedef  TYPE_1__ WebPPicture ;
typedef  int /*<<< orphan*/  VP8Random ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ * const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ * const,int const) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int const,int const,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  WEBP_YUV420 ; 
 int /*<<< orphan*/  WEBP_YUV420A ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int,int const,int const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__* const,int const,int const) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int kAlphaFix ; 
 int kGammaFix ; 
 int const kMinDimensionIterativeConversion ; 

__attribute__((used)) static int FUNC18(const uint8_t* r_ptr,
                              const uint8_t* g_ptr,
                              const uint8_t* b_ptr,
                              const uint8_t* a_ptr,
                              int step,         // bytes per pixel
                              int rgb_stride,   // bytes per scanline
                              float dithering,
                              int use_iterative_conversion,
                              WebPPicture* const picture) {
  int y;
  const int width = picture->width;
  const int height = picture->height;
  const int has_alpha = FUNC2(a_ptr, width, height, step, rgb_stride);
  const int is_rgb = (r_ptr < b_ptr);  // otherwise it's bgr

  picture->colorspace = has_alpha ? WEBP_YUV420A : WEBP_YUV420;
  picture->use_argb = 0;

  // disable smart conversion if source is too small (overkill).
  if (width < kMinDimensionIterativeConversion ||
      height < kMinDimensionIterativeConversion) {
    use_iterative_conversion = 0;
  }

  if (!FUNC14(picture, width, height)) {
    return 0;
  }
  if (has_alpha) {
    FUNC17(step == 4);
#if defined(USE_GAMMA_COMPRESSION) && defined(USE_INVERSE_ALPHA_TABLE)
    assert(kAlphaFix + kGammaFix <= 31);
#endif
  }

  if (use_iterative_conversion) {
    FUNC6();
    if (!FUNC7(r_ptr, g_ptr, b_ptr, step, rgb_stride, picture)) {
      return 0;
    }
    if (has_alpha) {
      FUNC12(a_ptr, rgb_stride, width, height,
                       picture->a, picture->a_stride);
    }
  } else {
    const int uv_width = (width + 1) >> 1;
    int use_dsp = (step == 3);  // use special function in this case
    // temporary storage for accumulated R/G/B values during conversion to U/V
    uint16_t* const tmp_rgb =
        (uint16_t*)FUNC16(4 * uv_width, sizeof(*tmp_rgb));
    uint8_t* dst_y = picture->y;
    uint8_t* dst_u = picture->u;
    uint8_t* dst_v = picture->v;
    uint8_t* dst_a = picture->a;

    VP8Random base_rg;
    VP8Random* rg = NULL;
    if (dithering > 0.) {
      FUNC8(&base_rg, dithering);
      rg = &base_rg;
      use_dsp = 0;   // can't use dsp in this case
    }
    FUNC13();
    FUNC5();

    if (tmp_rgb == NULL) return 0;  // malloc error

    // Downsample Y/U/V planes, two rows at a time
    for (y = 0; y < (height >> 1); ++y) {
      int rows_have_alpha = has_alpha;
      if (use_dsp) {
        if (is_rgb) {
          FUNC10(r_ptr, dst_y, width);
          FUNC10(r_ptr + rgb_stride,
                              dst_y + picture->y_stride, width);
        } else {
          FUNC9(b_ptr, dst_y, width);
          FUNC9(b_ptr + rgb_stride,
                              dst_y + picture->y_stride, width);
        }
      } else {
        FUNC3(r_ptr, g_ptr, b_ptr, step, dst_y, width, rg);
        FUNC3(r_ptr + rgb_stride,
                      g_ptr + rgb_stride,
                      b_ptr + rgb_stride, step,
                      dst_y + picture->y_stride, width, rg);
      }
      dst_y += 2 * picture->y_stride;
      if (has_alpha) {
        rows_have_alpha &= !FUNC12(a_ptr, rgb_stride, width, 2,
                                             dst_a, picture->a_stride);
        dst_a += 2 * picture->a_stride;
      }
      // Collect averaged R/G/B(/A)
      if (!rows_have_alpha) {
        FUNC0(r_ptr, g_ptr, b_ptr, step, rgb_stride, tmp_rgb, width);
      } else {
        FUNC1(r_ptr, g_ptr, b_ptr, a_ptr, rgb_stride, tmp_rgb, width);
      }
      // Convert to U/V
      if (rg == NULL) {
        FUNC11(tmp_rgb, dst_u, dst_v, uv_width);
      } else {
        FUNC4(tmp_rgb, dst_u, dst_v, uv_width, rg);
      }
      dst_u += picture->uv_stride;
      dst_v += picture->uv_stride;
      r_ptr += 2 * rgb_stride;
      b_ptr += 2 * rgb_stride;
      g_ptr += 2 * rgb_stride;
      if (has_alpha) a_ptr += 2 * rgb_stride;
    }
    if (height & 1) {    // extra last row
      int row_has_alpha = has_alpha;
      if (use_dsp) {
        if (r_ptr < b_ptr) {
          FUNC10(r_ptr, dst_y, width);
        } else {
          FUNC9(b_ptr, dst_y, width);
        }
      } else {
        FUNC3(r_ptr, g_ptr, b_ptr, step, dst_y, width, rg);
      }
      if (row_has_alpha) {
        row_has_alpha &= !FUNC12(a_ptr, 0, width, 1, dst_a, 0);
      }
      // Collect averaged R/G/B(/A)
      if (!row_has_alpha) {
        // Collect averaged R/G/B
        FUNC0(r_ptr, g_ptr, b_ptr, step, /* rgb_stride = */ 0,
                      tmp_rgb, width);
      } else {
        FUNC1(r_ptr, g_ptr, b_ptr, a_ptr, /* rgb_stride = */ 0,
                       tmp_rgb, width);
      }
      if (rg == NULL) {
        FUNC11(tmp_rgb, dst_u, dst_v, uv_width);
      } else {
        FUNC4(tmp_rgb, dst_u, dst_v, uv_width, rg);
      }
    }
    FUNC15(tmp_rgb);
  }
  return 1;
}