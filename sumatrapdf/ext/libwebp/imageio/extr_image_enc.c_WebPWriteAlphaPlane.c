
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int a_stride; int * a; } ;
struct TYPE_6__ {TYPE_1__ YUVA; } ;
struct TYPE_7__ {int width; int height; TYPE_2__ u; } ;
typedef TYPE_3__ WebPDecBuffer ;
typedef int FILE ;


 int fprintf (int *,char*,int const,int const) ;
 int fwrite (int const*,int const,int,int *) ;

int WebPWriteAlphaPlane(FILE* fout, const WebPDecBuffer* const buffer) {
  if (fout == ((void*)0) || buffer == ((void*)0)) {
    return 0;
  } else {
    const uint32_t width = buffer->width;
    const uint32_t height = buffer->height;
    const uint8_t* a = buffer->u.YUVA.a;
    const int a_stride = buffer->u.YUVA.a_stride;
    uint32_t y;

    if (a == ((void*)0)) return 0;

    fprintf(fout, "P5\n%u %u\n255\n", width, height);
    for (y = 0; y < height; ++y) {
      if (fwrite(a, width, 1, fout) != 1) return 0;
      a += a_stride;
    }
    return 1;
  }
}
