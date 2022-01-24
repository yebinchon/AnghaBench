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
struct TYPE_5__ {int colorspace; int argb_stride; int /*<<< orphan*/ * argb; } ;
typedef  TYPE_1__ WebPPicture ;
typedef  int WebPEncCSP ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int,int,float,int,TYPE_1__*) ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_INVALID_CONFIGURATION ; 
 int /*<<< orphan*/  VP8_ENC_ERROR_NULL_PARAMETER ; 
 int WEBP_CSP_UV_MASK ; 
 int WEBP_YUV420 ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(WebPPicture* picture, WebPEncCSP colorspace,
                             float dithering, int use_iterative_conversion) {
  if (picture == NULL) return 0;
  if (picture->argb == NULL) {
    return FUNC2(picture, VP8_ENC_ERROR_NULL_PARAMETER);
  } else if ((colorspace & WEBP_CSP_UV_MASK) != WEBP_YUV420) {
    return FUNC2(picture, VP8_ENC_ERROR_INVALID_CONFIGURATION);
  } else {
    const uint8_t* const argb = (const uint8_t*)picture->argb;
    const uint8_t* const a = argb + FUNC0(0);
    const uint8_t* const r = argb + FUNC0(1);
    const uint8_t* const g = argb + FUNC0(2);
    const uint8_t* const b = argb + FUNC0(3);

    picture->colorspace = WEBP_YUV420;
    return FUNC1(r, g, b, a, 4, 4 * picture->argb_stride,
                              dithering, use_iterative_conversion, picture);
  }
}