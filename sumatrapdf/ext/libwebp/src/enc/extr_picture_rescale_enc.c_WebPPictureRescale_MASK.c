#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  rescaler_t ;
struct TYPE_9__ {int width; int height; int a_stride; int y_stride; int uv_stride; int argb_stride; scalar_t__ argb; int /*<<< orphan*/  const* v; int /*<<< orphan*/  const* u; int /*<<< orphan*/  const* y; int /*<<< orphan*/  const* a; int /*<<< orphan*/  use_argb; } ;
typedef  TYPE_1__ WebPPicture ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int,int,int /*<<< orphan*/  const*,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long long,int) ; 

int FUNC11(WebPPicture* pic, int width, int height) {
  WebPPicture tmp;
  int prev_width, prev_height;
  rescaler_t* work;

  if (pic == NULL) return 0;
  prev_width = pic->width;
  prev_height = pic->height;
  if (!FUNC8(
          prev_width, prev_height, &width, &height)) {
    return 0;
  }

  FUNC3(pic, &tmp);
  tmp.width = width;
  tmp.height = height;
  if (!FUNC6(&tmp)) return 0;

  if (!pic->use_argb) {
    work = (rescaler_t*)FUNC10(2ULL * width, sizeof(*work));
    if (work == NULL) {
      FUNC7(&tmp);
      return 0;
    }
    // If present, we need to rescale alpha first (for AlphaMultiplyY).
    if (pic->a != NULL) {
      FUNC5();
      FUNC4(pic->a, prev_width, prev_height, pic->a_stride,
                   tmp.a, width, height, tmp.a_stride, work, 1);
    }

    // We take transparency into account on the luma plane only. That's not
    // totally exact blending, but still is a good approximation.
    FUNC1(pic, 0);
    FUNC4(pic->y, prev_width, prev_height, pic->y_stride,
                 tmp.y, width, height, tmp.y_stride, work, 1);
    FUNC1(&tmp, 1);

    FUNC4(pic->u,
                 FUNC2(prev_width), FUNC2(prev_height), pic->uv_stride,
                 tmp.u,
                 FUNC2(width), FUNC2(height), tmp.uv_stride, work, 1);
    FUNC4(pic->v,
                 FUNC2(prev_width), FUNC2(prev_height), pic->uv_stride,
                 tmp.v,
                 FUNC2(width), FUNC2(height), tmp.uv_stride, work, 1);
  } else {
    work = (rescaler_t*)FUNC10(2ULL * width * 4, sizeof(*work));
    if (work == NULL) {
      FUNC7(&tmp);
      return 0;
    }
    // In order to correctly interpolate colors, we need to apply the alpha
    // weighting first (black-matting), scale the RGB values, and remove
    // the premultiplication afterward (while preserving the alpha channel).
    FUNC5();
    FUNC0(pic, 0);
    FUNC4((const uint8_t*)pic->argb, prev_width, prev_height,
                 pic->argb_stride * 4,
                 (uint8_t*)tmp.argb, width, height,
                 tmp.argb_stride * 4,
                 work, 4);
    FUNC0(&tmp, 1);
  }
  FUNC7(pic);
  FUNC9(work);
  *pic = tmp;
  return 1;
}