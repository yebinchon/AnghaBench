#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
typedef  int uint16 ;
typedef  scalar_t__ GR_WINDOW_ID ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MWPF_RGB ; 
 int g_Bpp ; 
 int g_bpp ; 
 int /*<<< orphan*/  g_gc_clean ; 
 int g_server_bpp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 

void * FUNC5(int width, int height, uint8 * data)
{
  GR_WINDOW_ID pixmap;
  uint8 * p;
  uint32 i, j, pixel;

  p = data;
  pixmap = FUNC2(width, height, 0);
  if (g_server_bpp == 16 && g_bpp == 32)
  {
    p = FUNC4(width * height * g_Bpp);
    for (i = 0; i < height; i++)
    {
      for (j = 0; j < width; j++)
      {
        pixel = *(((uint16 *) data) + (i * width + j));
        pixel = FUNC0(pixel);
        *(((uint32 *) p) + (i * width + j)) = pixel;
      }
    }
  }
  FUNC1(pixmap, g_gc_clean, 0, 0, width, height, p, MWPF_RGB);
  if (p != data)
  {
    FUNC3(p);
  }
  return (void *) pixmap;
}