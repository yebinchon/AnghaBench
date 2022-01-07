
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_4__* output; } ;
typedef TYPE_3__ WebPDecParams ;
struct TYPE_8__ {int y_stride; size_t y_size; int u_stride; size_t u_size; int v_stride; size_t v_size; int * v; int * u; int * y; } ;
struct TYPE_9__ {TYPE_1__ YUVA; } ;
struct TYPE_11__ {int is_external_memory; TYPE_2__ u; int colorspace; } ;
typedef TYPE_4__ WebPDecBuffer ;


 scalar_t__ DecodeInto (int const*,size_t,TYPE_3__*) ;
 int MODE_YUV ;
 scalar_t__ VP8_STATUS_OK ;
 int WebPInitDecBuffer (TYPE_4__*) ;
 int WebPResetDecParams (TYPE_3__*) ;

uint8_t* WebPDecodeYUVInto(const uint8_t* data, size_t data_size,
                           uint8_t* luma, size_t luma_size, int luma_stride,
                           uint8_t* u, size_t u_size, int u_stride,
                           uint8_t* v, size_t v_size, int v_stride) {
  WebPDecParams params;
  WebPDecBuffer output;
  if (luma == ((void*)0)) return ((void*)0);
  WebPInitDecBuffer(&output);
  WebPResetDecParams(&params);
  params.output = &output;
  output.colorspace = MODE_YUV;
  output.u.YUVA.y = luma;
  output.u.YUVA.y_stride = luma_stride;
  output.u.YUVA.y_size = luma_size;
  output.u.YUVA.u = u;
  output.u.YUVA.u_stride = u_stride;
  output.u.YUVA.u_size = u_size;
  output.u.YUVA.v = v;
  output.u.YUVA.v_stride = v_stride;
  output.u.YUVA.v_size = v_size;
  output.is_external_memory = 1;
  if (DecodeInto(data, data_size, &params) != VP8_STATUS_OK) {
    return ((void*)0);
  }
  return luma;
}
