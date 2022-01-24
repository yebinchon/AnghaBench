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
struct TYPE_3__ {int width; int height; } ;
typedef  TYPE_1__ GR_WINDOW_INFO ;
typedef  int /*<<< orphan*/  GR_WINDOW_ID ;
typedef  int /*<<< orphan*/  GR_PIXELVAL ;
typedef  int /*<<< orphan*/  GR_DRAW_ID ;

/* Variables and functions */
 int /*<<< orphan*/  GR_MODE_COPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MWPF_TRUECOLOR0888 ; 
 int g_Bpp ; 
 int /*<<< orphan*/  g_gc ; 
 int /*<<< orphan*/  g_gc_clean ; 
 int /*<<< orphan*/  g_wnd ; 
 int FUNC6 (int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int* FUNC11 (int) ; 

void FUNC12(uint8 opcode, int x, int y, int cx, int cy,
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
    FUNC1(g_wnd, g_gc, x, y, cx, cy, (GR_DRAW_ID)src, srcx, srcy,
               GR_MODE_COPY);
  }
  else /* do opcodes ourself */
  {    /* slow but its correct, ok to be slow here, these are rare */
    FUNC3((GR_DRAW_ID)src, &wi);
    dest = FUNC11(cx * cy * g_Bpp);
    source = FUNC11(wi.width * wi.height * g_Bpp);
    final = FUNC11(cx * cy * g_Bpp);
    FUNC7(final, 0, cx * cy * g_Bpp);
    /* dest */
    FUNC5(g_wnd, x, y, cx, cy, (GR_PIXELVAL*)dest);
    /* source */
    FUNC5((GR_DRAW_ID)src, 0, 0,
               wi.width, wi.height, (GR_PIXELVAL*)source);
    for (i = 0; i < cy; i++)
    {
      for (j = 0; j < cx; j++)
      {
        s = FUNC6(source, j + srcx, i + srcy, wi.width, wi.height);
        d = FUNC6(dest, j, i, cx ,cy);
        FUNC9(final, j, i, cx, cy, FUNC8(opcode, s, d));
      }
    }
    pixmap = FUNC4(cx, cy, 0);
    FUNC0(pixmap, g_gc_clean, 0, 0, cx, cy, final, MWPF_TRUECOLOR0888);
    FUNC1(g_wnd, g_gc, x, y, cx, cy, pixmap, 0, 0, GR_MODE_COPY);
    FUNC2(pixmap);
    FUNC10(dest);
    FUNC10(source);
    FUNC10(final);
  }
}