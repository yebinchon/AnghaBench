#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  a_stride; int /*<<< orphan*/  a; int /*<<< orphan*/  v_stride; int /*<<< orphan*/  v; int /*<<< orphan*/  u_stride; int /*<<< orphan*/  u; int /*<<< orphan*/  y_stride; int /*<<< orphan*/  y; } ;
typedef  TYPE_2__ WebPYUVABuffer ;
struct TYPE_10__ {int /*<<< orphan*/  stride; int /*<<< orphan*/  rgba; } ;
typedef  TYPE_3__ WebPRGBABuffer ;
struct TYPE_8__ {TYPE_2__ YUVA; TYPE_3__ RGBA; } ;
struct TYPE_11__ {size_t colorspace; int width; int height; TYPE_1__ u; } ;
typedef  TYPE_4__ WebPDecBuffer ;
typedef  scalar_t__ VP8StatusCode ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__* const) ; 
 scalar_t__ VP8_STATUS_INVALID_PARAM ; 
 scalar_t__ VP8_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int* kModeBpp ; 

VP8StatusCode FUNC5(const WebPDecBuffer* const src_buf,
                                      WebPDecBuffer* const dst_buf) {
  FUNC4(src_buf != NULL && dst_buf != NULL);
  FUNC4(src_buf->colorspace == dst_buf->colorspace);

  dst_buf->width = src_buf->width;
  dst_buf->height = src_buf->height;
  if (FUNC0(dst_buf) != VP8_STATUS_OK) {
    return VP8_STATUS_INVALID_PARAM;
  }
  if (FUNC3(src_buf->colorspace)) {
    const WebPRGBABuffer* const src = &src_buf->u.RGBA;
    const WebPRGBABuffer* const dst = &dst_buf->u.RGBA;
    FUNC1(src->rgba, src->stride, dst->rgba, dst->stride,
                  src_buf->width * kModeBpp[src_buf->colorspace],
                  src_buf->height);
  } else {
    const WebPYUVABuffer* const src = &src_buf->u.YUVA;
    const WebPYUVABuffer* const dst = &dst_buf->u.YUVA;
    FUNC1(src->y, src->y_stride, dst->y, dst->y_stride,
                  src_buf->width, src_buf->height);
    FUNC1(src->u, src->u_stride, dst->u, dst->u_stride,
                  (src_buf->width + 1) / 2, (src_buf->height + 1) / 2);
    FUNC1(src->v, src->v_stride, dst->v, dst->v_stride,
                  (src_buf->width + 1) / 2, (src_buf->height + 1) / 2);
    if (FUNC2(src_buf->colorspace)) {
      FUNC1(src->a, src->a_stride, dst->a, dst->a_stride,
                    src_buf->width, src_buf->height);
    }
  }
  return VP8_STATUS_OK;
}