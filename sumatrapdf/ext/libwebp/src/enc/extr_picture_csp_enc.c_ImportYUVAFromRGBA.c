
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int width; int height; int a_stride; int y_stride; int uv_stride; int * a; int * v; int * u; int * y; scalar_t__ use_argb; int colorspace; } ;
typedef TYPE_1__ WebPPicture ;
typedef int VP8Random ;


 int AccumulateRGB (int const*,int const*,int const*,int,int,int * const,int const) ;
 int AccumulateRGBA (int const*,int const*,int const*,int const*,int,int * const,int const) ;
 int CheckNonOpaque (int const*,int const,int const,int,int) ;
 int ConvertRowToY (int const*,int const*,int const*,int,int *,int const,int *) ;
 int ConvertRowsToUV (int * const,int *,int *,int const,int *) ;
 int InitGammaTables () ;
 int InitGammaTablesS () ;
 int PreprocessARGB (int const*,int const*,int const*,int,int,TYPE_1__* const) ;
 int VP8InitRandom (int *,float) ;
 int WEBP_YUV420 ;
 int WEBP_YUV420A ;
 int WebPConvertBGR24ToY (int const*,int *,int const) ;
 int WebPConvertRGB24ToY (int const*,int *,int const) ;
 int WebPConvertRGBA32ToUV (int * const,int *,int *,int const) ;
 int WebPExtractAlpha (int const*,int,int const,int const,int *,int) ;
 int WebPInitConvertARGBToYUV () ;
 int WebPPictureAllocYUVA (TYPE_1__* const,int const,int const) ;
 int WebPSafeFree (int * const) ;
 scalar_t__ WebPSafeMalloc (int,int) ;
 int assert (int) ;
 int kAlphaFix ;
 int kGammaFix ;
 int const kMinDimensionIterativeConversion ;

__attribute__((used)) static int ImportYUVAFromRGBA(const uint8_t* r_ptr,
                              const uint8_t* g_ptr,
                              const uint8_t* b_ptr,
                              const uint8_t* a_ptr,
                              int step,
                              int rgb_stride,
                              float dithering,
                              int use_iterative_conversion,
                              WebPPicture* const picture) {
  int y;
  const int width = picture->width;
  const int height = picture->height;
  const int has_alpha = CheckNonOpaque(a_ptr, width, height, step, rgb_stride);
  const int is_rgb = (r_ptr < b_ptr);

  picture->colorspace = has_alpha ? WEBP_YUV420A : WEBP_YUV420;
  picture->use_argb = 0;


  if (width < kMinDimensionIterativeConversion ||
      height < kMinDimensionIterativeConversion) {
    use_iterative_conversion = 0;
  }

  if (!WebPPictureAllocYUVA(picture, width, height)) {
    return 0;
  }
  if (has_alpha) {
    assert(step == 4);



  }

  if (use_iterative_conversion) {
    InitGammaTablesS();
    if (!PreprocessARGB(r_ptr, g_ptr, b_ptr, step, rgb_stride, picture)) {
      return 0;
    }
    if (has_alpha) {
      WebPExtractAlpha(a_ptr, rgb_stride, width, height,
                       picture->a, picture->a_stride);
    }
  } else {
    const int uv_width = (width + 1) >> 1;
    int use_dsp = (step == 3);

    uint16_t* const tmp_rgb =
        (uint16_t*)WebPSafeMalloc(4 * uv_width, sizeof(*tmp_rgb));
    uint8_t* dst_y = picture->y;
    uint8_t* dst_u = picture->u;
    uint8_t* dst_v = picture->v;
    uint8_t* dst_a = picture->a;

    VP8Random base_rg;
    VP8Random* rg = ((void*)0);
    if (dithering > 0.) {
      VP8InitRandom(&base_rg, dithering);
      rg = &base_rg;
      use_dsp = 0;
    }
    WebPInitConvertARGBToYUV();
    InitGammaTables();

    if (tmp_rgb == ((void*)0)) return 0;


    for (y = 0; y < (height >> 1); ++y) {
      int rows_have_alpha = has_alpha;
      if (use_dsp) {
        if (is_rgb) {
          WebPConvertRGB24ToY(r_ptr, dst_y, width);
          WebPConvertRGB24ToY(r_ptr + rgb_stride,
                              dst_y + picture->y_stride, width);
        } else {
          WebPConvertBGR24ToY(b_ptr, dst_y, width);
          WebPConvertBGR24ToY(b_ptr + rgb_stride,
                              dst_y + picture->y_stride, width);
        }
      } else {
        ConvertRowToY(r_ptr, g_ptr, b_ptr, step, dst_y, width, rg);
        ConvertRowToY(r_ptr + rgb_stride,
                      g_ptr + rgb_stride,
                      b_ptr + rgb_stride, step,
                      dst_y + picture->y_stride, width, rg);
      }
      dst_y += 2 * picture->y_stride;
      if (has_alpha) {
        rows_have_alpha &= !WebPExtractAlpha(a_ptr, rgb_stride, width, 2,
                                             dst_a, picture->a_stride);
        dst_a += 2 * picture->a_stride;
      }

      if (!rows_have_alpha) {
        AccumulateRGB(r_ptr, g_ptr, b_ptr, step, rgb_stride, tmp_rgb, width);
      } else {
        AccumulateRGBA(r_ptr, g_ptr, b_ptr, a_ptr, rgb_stride, tmp_rgb, width);
      }

      if (rg == ((void*)0)) {
        WebPConvertRGBA32ToUV(tmp_rgb, dst_u, dst_v, uv_width);
      } else {
        ConvertRowsToUV(tmp_rgb, dst_u, dst_v, uv_width, rg);
      }
      dst_u += picture->uv_stride;
      dst_v += picture->uv_stride;
      r_ptr += 2 * rgb_stride;
      b_ptr += 2 * rgb_stride;
      g_ptr += 2 * rgb_stride;
      if (has_alpha) a_ptr += 2 * rgb_stride;
    }
    if (height & 1) {
      int row_has_alpha = has_alpha;
      if (use_dsp) {
        if (r_ptr < b_ptr) {
          WebPConvertRGB24ToY(r_ptr, dst_y, width);
        } else {
          WebPConvertBGR24ToY(b_ptr, dst_y, width);
        }
      } else {
        ConvertRowToY(r_ptr, g_ptr, b_ptr, step, dst_y, width, rg);
      }
      if (row_has_alpha) {
        row_has_alpha &= !WebPExtractAlpha(a_ptr, 0, width, 1, dst_a, 0);
      }

      if (!row_has_alpha) {

        AccumulateRGB(r_ptr, g_ptr, b_ptr, step, 0,
                      tmp_rgb, width);
      } else {
        AccumulateRGBA(r_ptr, g_ptr, b_ptr, a_ptr, 0,
                       tmp_rgb, width);
      }
      if (rg == ((void*)0)) {
        WebPConvertRGBA32ToUV(tmp_rgb, dst_u, dst_v, uv_width);
      } else {
        ConvertRowsToUV(tmp_rgb, dst_u, dst_v, uv_width, rg);
      }
    }
    WebPSafeFree(tmp_rgb);
  }
  return 1;
}
