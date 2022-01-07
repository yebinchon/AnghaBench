
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int width; int height; int a_stride; int uv_stride; int y_stride; int * a; int * v; int * u; int * y; } ;
typedef TYPE_1__ WebPPicture ;
typedef int FILE ;


 int * WFOPEN (char const*,char*) ;
 scalar_t__ WebPPictureHasTransparency (TYPE_1__ const* const) ;
 int fclose (int * const) ;
 int fprintf (int * const,char*,int const,int const) ;
 int fputc (int ,int * const) ;
 int fwrite (int const*,int const,int,int * const) ;

__attribute__((used)) static int DumpPicture(const WebPPicture* const picture, const char* PGM_name) {
  int y;
  const int uv_width = (picture->width + 1) / 2;
  const int uv_height = (picture->height + 1) / 2;
  const int stride = (picture->width + 1) & ~1;
  const uint8_t* src_y = picture->y;
  const uint8_t* src_u = picture->u;
  const uint8_t* src_v = picture->v;
  const uint8_t* src_a = picture->a;
  const int alpha_height =
      WebPPictureHasTransparency(picture) ? picture->height : 0;
  const int height = picture->height + uv_height + alpha_height;
  FILE* const f = WFOPEN(PGM_name, "wb");
  if (f == ((void*)0)) return 0;
  fprintf(f, "P5\n%d %d\n255\n", stride, height);
  for (y = 0; y < picture->height; ++y) {
    if (fwrite(src_y, picture->width, 1, f) != 1) return 0;
    if (picture->width & 1) fputc(0, f);
    src_y += picture->y_stride;
  }
  for (y = 0; y < uv_height; ++y) {
    if (fwrite(src_u, uv_width, 1, f) != 1) return 0;
    if (fwrite(src_v, uv_width, 1, f) != 1) return 0;
    src_u += picture->uv_stride;
    src_v += picture->uv_stride;
  }
  for (y = 0; y < alpha_height; ++y) {
    if (fwrite(src_a, picture->width, 1, f) != 1) return 0;
    if (picture->width & 1) fputc(0, f);
    src_a += picture->a_stride;
  }
  fclose(f);
  return 1;
}
