
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ const uint32_t ;
typedef int rescaler_t ;
struct TYPE_3__ {int x_expand; int y_expand; int src_width; int src_height; int dst_width; int dst_height; int dst_stride; int num_channels; int x_add; int x_sub; int y_add; int y_sub; int y_accum; scalar_t__ fxy_scale; int * frow; int * irow; void* fy_scale; void* fx_scale; int * dst; scalar_t__ dst_y; scalar_t__ src_y; } ;
typedef TYPE_1__ WebPRescaler ;


 void* WEBP_RESCALER_FRAC (int,scalar_t__) ;
 scalar_t__ WEBP_RESCALER_ONE ;
 int WebPRescalerDspInit () ;
 int memset (int * const,int ,int) ;

void WebPRescalerInit(WebPRescaler* const wrk, int src_width, int src_height,
                      uint8_t* const dst,
                      int dst_width, int dst_height, int dst_stride,
                      int num_channels, rescaler_t* const work) {
  const int x_add = src_width, x_sub = dst_width;
  const int y_add = src_height, y_sub = dst_height;
  wrk->x_expand = (src_width < dst_width);
  wrk->y_expand = (src_height < dst_height);
  wrk->src_width = src_width;
  wrk->src_height = src_height;
  wrk->dst_width = dst_width;
  wrk->dst_height = dst_height;
  wrk->src_y = 0;
  wrk->dst_y = 0;
  wrk->dst = dst;
  wrk->dst_stride = dst_stride;
  wrk->num_channels = num_channels;


  wrk->x_add = wrk->x_expand ? (x_sub - 1) : x_add;
  wrk->x_sub = wrk->x_expand ? (x_add - 1) : x_sub;
  if (!wrk->x_expand) {
    wrk->fx_scale = WEBP_RESCALER_FRAC(1, wrk->x_sub);
  }

  wrk->y_add = wrk->y_expand ? y_add - 1 : y_add;
  wrk->y_sub = wrk->y_expand ? y_sub - 1 : y_sub;
  wrk->y_accum = wrk->y_expand ? wrk->y_sub : wrk->y_add;
  if (!wrk->y_expand) {



    const uint64_t ratio =
        (uint64_t)dst_height * WEBP_RESCALER_ONE / (wrk->x_add * wrk->y_add);
    if (ratio != (uint32_t)ratio) {




      wrk->fxy_scale = 0;
    } else {
      wrk->fxy_scale = (uint32_t)ratio;
    }
    wrk->fy_scale = WEBP_RESCALER_FRAC(1, wrk->y_sub);
  } else {
    wrk->fy_scale = WEBP_RESCALER_FRAC(1, wrk->x_add);

  }
  wrk->irow = work;
  wrk->frow = work + num_channels * dst_width;
  memset(work, 0, 2 * dst_width * num_channels * sizeof(*work));

  WebPRescalerDspInit();
}
