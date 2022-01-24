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

/* Variables and functions */
 int ACCELFLAG_FILLBOX ; 
 int ACCELFLAG_PUTIMAGE ; 
 int ACCELFLAG_SCREENCOPY ; 
 int G1024x768x256 ; 
 int G1024x768x64K ; 
 int G640x480x256 ; 
 int G640x480x64K ; 
 int G800x600x256 ; 
 int G800x600x64K ; 
 int /*<<< orphan*/  VGA_AVAIL_ACCEL ; 
 int /*<<< orphan*/  VGA_EXT_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int g_height ; 
 int /*<<< orphan*/  g_save_mem ; 
 int g_server_Bpp ; 
 int g_width ; 
 int has_fill_box ; 
 int has_put_image ; 
 int has_screen_copy ; 
 int /*<<< orphan*/  key_event ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  sdata ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ use_accel ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(void)
{
  int vgamode;
  int i;

  vgamode = G800x600x256;
  if (g_width == 640 && g_height == 480)
  {
    if (g_server_Bpp == 1)
      vgamode = G640x480x256;
    else if (g_server_Bpp == 2)
      vgamode = G640x480x64K;
  }
  else if (g_width == 800 && g_height == 600)
  {
    if (g_server_Bpp == 1)
      vgamode = G800x600x256;
    else if (g_server_Bpp == 2)
      vgamode = G800x600x64K;
  }
  else if (g_width == 1024 && g_height == 768)
  {
    if (g_server_Bpp == 1)
      vgamode = G1024x768x256;
    else if (g_server_Bpp == 2)
      vgamode = G1024x768x64K;
  }
  else
  {
    FUNC0("Invalid width / height");
    return 0;
  }
  FUNC5();
  if (!FUNC7(vgamode))
  {
    FUNC0("Graphics unavailable");
    return 0;
  }
  FUNC9(1);
  FUNC3(g_width / 2, g_height / 2);
  FUNC8(vgamode);
  if (FUNC1())
  {
    FUNC0("Keyboard unavailable");
    return 0;
  }
  FUNC2(key_event);
  if (use_accel)
  {
    i = FUNC6(VGA_EXT_AVAILABLE, VGA_AVAIL_ACCEL);
    if (i & ACCELFLAG_PUTIMAGE)
      has_put_image = 1;
    if (i & ACCELFLAG_SCREENCOPY)
      has_screen_copy = 1;
    if (i & ACCELFLAG_FILLBOX)
      has_fill_box = 1;
    FUNC4("accel %d\n", i);
  }
  if (!has_screen_copy && !g_save_mem)
    sdata = FUNC10(g_width * g_height * g_server_Bpp);
  return 1;
}