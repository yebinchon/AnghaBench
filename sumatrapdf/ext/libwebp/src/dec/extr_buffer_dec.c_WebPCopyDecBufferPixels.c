
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int a_stride; int a; int v_stride; int v; int u_stride; int u; int y_stride; int y; } ;
typedef TYPE_2__ WebPYUVABuffer ;
struct TYPE_10__ {int stride; int rgba; } ;
typedef TYPE_3__ WebPRGBABuffer ;
struct TYPE_8__ {TYPE_2__ YUVA; TYPE_3__ RGBA; } ;
struct TYPE_11__ {size_t colorspace; int width; int height; TYPE_1__ u; } ;
typedef TYPE_4__ WebPDecBuffer ;
typedef scalar_t__ VP8StatusCode ;


 scalar_t__ CheckDecBuffer (TYPE_4__* const) ;
 scalar_t__ VP8_STATUS_INVALID_PARAM ;
 scalar_t__ VP8_STATUS_OK ;
 int WebPCopyPlane (int ,int ,int ,int ,int,int) ;
 scalar_t__ WebPIsAlphaMode (size_t) ;
 scalar_t__ WebPIsRGBMode (size_t) ;
 int assert (int) ;
 int* kModeBpp ;

VP8StatusCode WebPCopyDecBufferPixels(const WebPDecBuffer* const src_buf,
                                      WebPDecBuffer* const dst_buf) {
  assert(src_buf != ((void*)0) && dst_buf != ((void*)0));
  assert(src_buf->colorspace == dst_buf->colorspace);

  dst_buf->width = src_buf->width;
  dst_buf->height = src_buf->height;
  if (CheckDecBuffer(dst_buf) != VP8_STATUS_OK) {
    return VP8_STATUS_INVALID_PARAM;
  }
  if (WebPIsRGBMode(src_buf->colorspace)) {
    const WebPRGBABuffer* const src = &src_buf->u.RGBA;
    const WebPRGBABuffer* const dst = &dst_buf->u.RGBA;
    WebPCopyPlane(src->rgba, src->stride, dst->rgba, dst->stride,
                  src_buf->width * kModeBpp[src_buf->colorspace],
                  src_buf->height);
  } else {
    const WebPYUVABuffer* const src = &src_buf->u.YUVA;
    const WebPYUVABuffer* const dst = &dst_buf->u.YUVA;
    WebPCopyPlane(src->y, src->y_stride, dst->y, dst->y_stride,
                  src_buf->width, src_buf->height);
    WebPCopyPlane(src->u, src->u_stride, dst->u, dst->u_stride,
                  (src_buf->width + 1) / 2, (src_buf->height + 1) / 2);
    WebPCopyPlane(src->v, src->v_stride, dst->v, dst->v_stride,
                  (src_buf->width + 1) / 2, (src_buf->height + 1) / 2);
    if (WebPIsAlphaMode(src_buf->colorspace)) {
      WebPCopyPlane(src->a, src->a_stride, dst->a, dst->a_stride,
                    src_buf->width, src_buf->height);
    }
  }
  return VP8_STATUS_OK;
}
