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
typedef  int uint16 ;

/* Variables and functions */
 int clip_endx ; 
 int clip_endy ; 
 int clip_startx ; 
 int clip_starty ; 
 int g_height ; 
 int g_server_Bpp ; 
 int g_width ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int* sdata ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(int x, int y, int pixel, int op)
{
  if (x >= clip_startx && x < clip_endx && y >= clip_starty && y < clip_endy)
  {
    if (x >= 0 && x < g_width && y >= 0 && y < g_height)
    {
      if (op == 0x0)
        pixel = 0;
      else if (op == 0xf)
        pixel = -1;
      else if (op != 0xc)
        pixel = FUNC1(op, pixel, FUNC0(x, y));
      if (sdata != 0)
      {
        if (g_server_Bpp == 1)
          sdata[y * g_width + x] = pixel;
        else if (g_server_Bpp == 2)
          ((uint16*)sdata)[y * g_width + x] = pixel;
      }
      else
      {
        FUNC3(pixel);
        FUNC2(x, y);
      }
    }
  }
}