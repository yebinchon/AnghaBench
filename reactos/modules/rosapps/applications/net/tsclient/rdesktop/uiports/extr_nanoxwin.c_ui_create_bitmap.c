
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
typedef scalar_t__ GR_WINDOW_ID ;


 int COLOR16TO32 (int) ;
 int GrArea (scalar_t__,int ,int ,int ,int,int,int *,int ) ;
 scalar_t__ GrNewPixmap (int,int,int ) ;
 int MWPF_RGB ;
 int g_Bpp ;
 int g_bpp ;
 int g_gc_clean ;
 int g_server_bpp ;
 int xfree (int *) ;
 int * xmalloc (int) ;

void * ui_create_bitmap(int width, int height, uint8 * data)
{
  GR_WINDOW_ID pixmap;
  uint8 * p;
  uint32 i, j, pixel;

  p = data;
  pixmap = GrNewPixmap(width, height, 0);
  if (g_server_bpp == 16 && g_bpp == 32)
  {
    p = xmalloc(width * height * g_Bpp);
    for (i = 0; i < height; i++)
    {
      for (j = 0; j < width; j++)
      {
        pixel = *(((uint16 *) data) + (i * width + j));
        pixel = COLOR16TO32(pixel);
        *(((uint32 *) p) + (i * width + j)) = pixel;
      }
    }
  }
  GrArea(pixmap, g_gc_clean, 0, 0, width, height, p, MWPF_RGB);
  if (p != data)
  {
    xfree(p);
  }
  return (void *) pixmap;
}
