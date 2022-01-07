
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int y_stride; int u_stride; int v_stride; int a_stride; int * a; int * v; int * u; scalar_t__ y; } ;
typedef TYPE_2__ WebPYUVABuffer ;
struct TYPE_5__ {TYPE_2__ YUVA; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_3__ WebPDecBuffer ;


 int WebPConvertARGBToUV (int const* const,int * const,int * const,int,int) ;
 int WebPConvertARGBToY (int const* const,scalar_t__,int) ;
 int WebPExtractAlpha (int *,int ,int,int,int * const,int ) ;

__attribute__((used)) static void ConvertToYUVA(const uint32_t* const src, int width, int y_pos,
                          const WebPDecBuffer* const output) {
  const WebPYUVABuffer* const buf = &output->u.YUVA;


  WebPConvertARGBToY(src, buf->y + y_pos * buf->y_stride, width);


  {
    uint8_t* const u = buf->u + (y_pos >> 1) * buf->u_stride;
    uint8_t* const v = buf->v + (y_pos >> 1) * buf->v_stride;


    WebPConvertARGBToUV(src, u, v, width, !(y_pos & 1));
  }

  if (buf->a != ((void*)0)) {
    uint8_t* const a = buf->a + y_pos * buf->a_stride;



    WebPExtractAlpha((uint8_t*)src + 3, 0, width, 1, a, 0);

  }
}
