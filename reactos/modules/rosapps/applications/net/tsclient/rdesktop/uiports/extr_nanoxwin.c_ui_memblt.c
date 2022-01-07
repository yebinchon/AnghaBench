
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int width; int height; } ;
typedef TYPE_1__ GR_WINDOW_INFO ;
typedef int GR_WINDOW_ID ;
typedef int GR_PIXELVAL ;
typedef int GR_DRAW_ID ;


 int GR_MODE_COPY ;
 int GrArea (int ,int ,int ,int ,int,int,int*,int ) ;
 int GrCopyArea (int ,int ,int,int,int,int,int ,int,int,int ) ;
 int GrDestroyWindow (int ) ;
 int GrGetWindowInfo (int ,TYPE_1__*) ;
 int GrNewPixmap (int,int,int ) ;
 int GrReadArea (int ,int,int,int,int,int *) ;
 int MWPF_TRUECOLOR0888 ;
 int g_Bpp ;
 int g_gc ;
 int g_gc_clean ;
 int g_wnd ;
 int get_pixel32 (int*,int,int,int,int) ;
 int memset (int*,int ,int) ;
 int rop (int,int,int) ;
 int set_pixel32 (int*,int,int,int,int,int ) ;
 int xfree (int*) ;
 int* xmalloc (int) ;

void ui_memblt(uint8 opcode, int x, int y, int cx, int cy,
               void * src, int srcx, int srcy)
{
  uint8 * dest;
  uint8 * source;
  uint8 * final;
  GR_WINDOW_INFO wi;
  int i, j, s, d;
  GR_WINDOW_ID pixmap;

  if (opcode == 12)
  {
    GrCopyArea(g_wnd, g_gc, x, y, cx, cy, (GR_DRAW_ID)src, srcx, srcy,
               GR_MODE_COPY);
  }
  else
  {
    GrGetWindowInfo((GR_DRAW_ID)src, &wi);
    dest = xmalloc(cx * cy * g_Bpp);
    source = xmalloc(wi.width * wi.height * g_Bpp);
    final = xmalloc(cx * cy * g_Bpp);
    memset(final, 0, cx * cy * g_Bpp);

    GrReadArea(g_wnd, x, y, cx, cy, (GR_PIXELVAL*)dest);

    GrReadArea((GR_DRAW_ID)src, 0, 0,
               wi.width, wi.height, (GR_PIXELVAL*)source);
    for (i = 0; i < cy; i++)
    {
      for (j = 0; j < cx; j++)
      {
        s = get_pixel32(source, j + srcx, i + srcy, wi.width, wi.height);
        d = get_pixel32(dest, j, i, cx ,cy);
        set_pixel32(final, j, i, cx, cy, rop(opcode, s, d));
      }
    }
    pixmap = GrNewPixmap(cx, cy, 0);
    GrArea(pixmap, g_gc_clean, 0, 0, cx, cy, final, MWPF_TRUECOLOR0888);
    GrCopyArea(g_wnd, g_gc, x, y, cx, cy, pixmap, 0, 0, GR_MODE_COPY);
    GrDestroyWindow(pixmap);
    xfree(dest);
    xfree(source);
    xfree(final);
  }
}
