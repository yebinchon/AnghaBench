
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_3__ {int style; int* pattern; int yorigin; int xorigin; } ;
typedef int GR_WINDOW_ID ;
typedef int GR_PIXELVAL ;
typedef TYPE_1__ BRUSH ;


 int COLOR16TO32 (int) ;
 int GR_MODE_COPY ;
 int GrArea (int ,int ,int ,int ,int,int,int*,int ) ;
 int GrCopyArea (int ,int ,int,int,int,int,int ,int ,int ,int ) ;
 int GrDestroyWindow (int ) ;
 int GrFillRect (int ,int ,int,int,int,int) ;
 int GrNewPixmap (int,int,int ) ;
 int GrReadArea (int ,int,int,int,int,int *) ;
 int GrSetGCForeground (int ,int) ;
 int GrSetGCMode (int ,int ) ;
 int MWPF_TRUECOLOR0888 ;
 int g_Bpp ;
 int g_bpp ;
 int g_gc ;
 int g_gc_clean ;
 int * g_ops ;
 int g_server_bpp ;
 int g_wnd ;
 int get_pixel32 (int*,int,int,int,int) ;
 int is_pixel_on (int*,int,int,int,int) ;
 int memset (int*,int ,int) ;
 int rop (int,int,int) ;
 int set_pixel32 (int*,int,int,int,int,int ) ;
 int unimpl (char*,int) ;
 int xfree (int*) ;
 int* xmalloc (int) ;

void ui_patblt(uint8 opcode, int x, int y, int cx, int cy,
               BRUSH * brush, int bgcolor, int fgcolor)
{
  uint8 ipattern[8], * dest, * final;
  uint32 op;
  int i, j, s, d;
  GR_WINDOW_ID pixmap;

  if (g_server_bpp == 16 && g_bpp == 32)
  {
    fgcolor = COLOR16TO32(fgcolor);
    bgcolor = COLOR16TO32(bgcolor);
  }
  switch (brush->style)
  {
    case 0:
      if (opcode == 12 || opcode == 6)
      {
        op = g_ops[opcode];
        GrSetGCMode(g_gc, op);
        GrSetGCForeground(g_gc, fgcolor);
        GrFillRect(g_wnd, g_gc, x, y, cx, cy);
        GrSetGCMode(g_gc, GR_MODE_COPY);
      }
      else
      {
        unimpl("opcode %d in ui_patblt solid brush\n", opcode);
      }
      break;
    case 3:
      for (i = 0; i != 8; i++)
      {
        ipattern[7 - i] = brush->pattern[i];
      }
      dest = xmalloc(cx * cy * g_Bpp);
      final = xmalloc(cx * cy * g_Bpp);
      memset(final, 0, cx * cy * g_Bpp);

      if (opcode != 12)
      {
        GrReadArea(g_wnd, x, y, cx, cy, (GR_PIXELVAL*)dest);
      }
      for (i = 0; i < cy; i++)
      {
        for (j = 0; j < cx; j++)
        {
          if (is_pixel_on(ipattern, (x + j + brush->xorigin) % 8,
                          (y + i + brush->yorigin) % 8, 8, 1))
          {
            s = fgcolor;
          }
          else
          {
            s = bgcolor;
          }
          d = get_pixel32(dest, j, i, cx ,cy);
          set_pixel32(final, j, i, cx, cy, rop(opcode, s, d));
        }
      }
      pixmap = GrNewPixmap(cx, cy, 0);
      GrArea(pixmap, g_gc_clean, 0, 0, cx, cy, final, MWPF_TRUECOLOR0888);
      GrCopyArea(g_wnd, g_gc, x, y, cx, cy, pixmap, 0, 0, GR_MODE_COPY);
      GrDestroyWindow(pixmap);
      xfree(dest);
      xfree(final);
      break;
  }
}
