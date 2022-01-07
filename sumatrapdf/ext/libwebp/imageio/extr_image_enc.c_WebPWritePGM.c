
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int a_stride; int v_stride; int u_stride; int y_stride; int * a; int * v; int * u; int * y; } ;
typedef TYPE_2__ WebPYUVABuffer ;
struct TYPE_5__ {TYPE_2__ YUVA; } ;
struct TYPE_7__ {int width; int height; TYPE_1__ u; } ;
typedef TYPE_3__ WebPDecBuffer ;
typedef int FILE ;


 int fprintf (int *,char*,int const,int const) ;
 int fputc (int ,int *) ;
 int fwrite (int const*,int const,int,int *) ;

int WebPWritePGM(FILE* fout, const WebPDecBuffer* const buffer) {
  if (fout == ((void*)0) || buffer == ((void*)0)) {
    return 0;
  } else {
    const int width = buffer->width;
    const int height = buffer->height;
    const WebPYUVABuffer* const yuv = &buffer->u.YUVA;
    const uint8_t* src_y = yuv->y;
    const uint8_t* src_u = yuv->u;
    const uint8_t* src_v = yuv->v;
    const uint8_t* src_a = yuv->a;
    const int uv_width = (width + 1) / 2;
    const int uv_height = (height + 1) / 2;
    const int a_height = (src_a != ((void*)0)) ? height : 0;
    int ok = 1;
    int y;

    if (src_y == ((void*)0) || src_u == ((void*)0) || src_v == ((void*)0)) return 0;

    fprintf(fout, "P5\n%d %d\n255\n",
            (width + 1) & ~1, height + uv_height + a_height);
    for (y = 0; ok && y < height; ++y) {
      ok &= (fwrite(src_y, width, 1, fout) == 1);
      if (width & 1) fputc(0, fout);
      src_y += yuv->y_stride;
    }
    for (y = 0; ok && y < uv_height; ++y) {
      ok &= (fwrite(src_u, uv_width, 1, fout) == 1);
      ok &= (fwrite(src_v, uv_width, 1, fout) == 1);
      src_u += yuv->u_stride;
      src_v += yuv->v_stride;
    }
    for (y = 0; ok && y < a_height; ++y) {
      ok &= (fwrite(src_a, width, 1, fout) == 1);
      if (width & 1) fputc(0, fout);
      src_a += yuv->a_stride;
    }
    return ok;
  }
}
