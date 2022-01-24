#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_3__ {int style; int* pattern; int /*<<< orphan*/  yorigin; int /*<<< orphan*/  xorigin; } ;
typedef  int /*<<< orphan*/  GR_WINDOW_ID ;
typedef  int /*<<< orphan*/  GR_PIXELVAL ;
typedef  TYPE_1__ BRUSH ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  GR_MODE_COPY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MWPF_TRUECOLOR0888 ; 
 int g_Bpp ; 
 int g_bpp ; 
 int /*<<< orphan*/  g_gc ; 
 int /*<<< orphan*/  g_gc_clean ; 
 int /*<<< orphan*/ * g_ops ; 
 int g_server_bpp ; 
 int /*<<< orphan*/  g_wnd ; 
 int FUNC9 (int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int*) ; 
 int* FUNC16 (int) ; 

void FUNC17(uint8 opcode, int x, int y, int cx, int cy,
               BRUSH * brush, int bgcolor, int fgcolor)
{
  uint8 ipattern[8], * dest, * final;
  uint32 op;
  int i, j, s, d;
  GR_WINDOW_ID pixmap;

  if (g_server_bpp == 16 && g_bpp == 32)
  {
    fgcolor = FUNC0(fgcolor);
    bgcolor = FUNC0(bgcolor);
  }
  switch (brush->style)
  {
    case 0: /* Solid */
      if (opcode == 12 || opcode == 6)
      {
        op = g_ops[opcode];
        FUNC8(g_gc, op);
        FUNC7(g_gc, fgcolor);
        FUNC4(g_wnd, g_gc, x, y, cx, cy);
        FUNC8(g_gc, GR_MODE_COPY);
      }
      else
      {
        FUNC14("opcode %d in ui_patblt solid brush\n", opcode);
      }
      break;
    case 3: /* Pattern - all opcodes ok */
      for (i = 0; i != 8; i++)
      {
        ipattern[7 - i] = brush->pattern[i];
      }
      dest = FUNC16(cx * cy * g_Bpp);
      final = FUNC16(cx * cy * g_Bpp);
      FUNC11(final, 0, cx * cy * g_Bpp);
      /* dest */
      if (opcode != 12)
      {
        FUNC6(g_wnd, x, y, cx, cy, (GR_PIXELVAL*)dest);
      }
      for (i = 0; i < cy; i++)
      {
        for (j = 0; j < cx; j++)
        {
          if (FUNC10(ipattern, (x + j + brush->xorigin) % 8,
                          (y + i + brush->yorigin) % 8, 8, 1))
          {
            s = fgcolor;
          }
          else
          {
            s = bgcolor;
          }
          d = FUNC9(dest, j, i, cx ,cy);
          FUNC13(final, j, i, cx, cy, FUNC12(opcode, s, d));
        }
      }
      pixmap = FUNC5(cx, cy, 0);
      FUNC1(pixmap, g_gc_clean, 0, 0, cx, cy, final, MWPF_TRUECOLOR0888);
      FUNC2(g_wnd, g_gc, x, y, cx, cy, pixmap, 0, 0, GR_MODE_COPY);
      FUNC3(pixmap);
      FUNC15(dest);
      FUNC15(final);
      break;
  }
}