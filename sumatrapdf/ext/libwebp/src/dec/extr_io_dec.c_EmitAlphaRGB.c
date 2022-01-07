
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int const stride; int * rgba; } ;
typedef TYPE_3__ WebPRGBABuffer ;
struct TYPE_12__ {TYPE_2__* output; } ;
typedef TYPE_4__ WebPDecParams ;
typedef scalar_t__ WEBP_CSP_MODE ;
struct TYPE_13__ {int mb_w; int width; int * a; } ;
typedef TYPE_5__ VP8Io ;
struct TYPE_9__ {TYPE_3__ RGBA; } ;
struct TYPE_10__ {scalar_t__ colorspace; TYPE_1__ u; } ;


 int GetAlphaSourceRow (TYPE_5__ const* const,int const**,int*) ;
 scalar_t__ const MODE_ARGB ;
 scalar_t__ const MODE_Argb ;
 int WebPApplyAlphaMultiply (int * const,int const,int const,int,int const) ;
 int WebPDispatchAlpha (int const*,int ,int const,int,int * const,int const) ;
 scalar_t__ WebPIsPremultipliedMode (scalar_t__ const) ;
 int assert (int) ;

__attribute__((used)) static int EmitAlphaRGB(const VP8Io* const io, WebPDecParams* const p,
                        int expected_num_lines_out) {
  const uint8_t* alpha = io->a;
  if (alpha != ((void*)0)) {
    const int mb_w = io->mb_w;
    const WEBP_CSP_MODE colorspace = p->output->colorspace;
    const int alpha_first =
        (colorspace == MODE_ARGB || colorspace == MODE_Argb);
    const WebPRGBABuffer* const buf = &p->output->u.RGBA;
    int num_rows;
    const int start_y = GetAlphaSourceRow(io, &alpha, &num_rows);
    uint8_t* const base_rgba = buf->rgba + start_y * buf->stride;
    uint8_t* const dst = base_rgba + (alpha_first ? 0 : 3);
    const int has_alpha = WebPDispatchAlpha(alpha, io->width, mb_w,
                                            num_rows, dst, buf->stride);
    (void)expected_num_lines_out;
    assert(expected_num_lines_out == num_rows);

    if (has_alpha && WebPIsPremultipliedMode(colorspace)) {
      WebPApplyAlphaMultiply(base_rgba, alpha_first,
                             mb_w, num_rows, buf->stride);
    }
  }
  return 0;
}
