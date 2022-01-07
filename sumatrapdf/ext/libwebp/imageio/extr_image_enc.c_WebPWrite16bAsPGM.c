
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int stride; int * rgba; } ;
struct TYPE_6__ {TYPE_1__ RGBA; } ;
struct TYPE_7__ {int width; int height; TYPE_2__ u; } ;
typedef TYPE_3__ WebPDecBuffer ;
typedef int FILE ;


 int fprintf (int *,char*,int const,int const) ;
 int const fwrite (int const*,int const,int const,int *) ;

int WebPWrite16bAsPGM(FILE* fout, const WebPDecBuffer* const buffer) {
  const uint32_t width = buffer->width;
  const uint32_t height = buffer->height;
  const uint8_t* rgba = buffer->u.RGBA.rgba;
  const int stride = buffer->u.RGBA.stride;
  const uint32_t bytes_per_px = 2;
  uint32_t y;

  if (fout == ((void*)0) || buffer == ((void*)0) || rgba == ((void*)0)) return 0;

  fprintf(fout, "P5\n%u %u\n255\n", width * bytes_per_px, height);
  for (y = 0; y < height; ++y) {
    if (fwrite(rgba, width, bytes_per_px, fout) != bytes_per_px) {
      return 0;
    }
    rgba += stride;
  }
  return 1;
}
