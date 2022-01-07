
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCELFLAG_FILLBOX ;
 int ACCELFLAG_PUTIMAGE ;
 int ACCELFLAG_SCREENCOPY ;
 int G1024x768x256 ;
 int G1024x768x64K ;
 int G640x480x256 ;
 int G640x480x64K ;
 int G800x600x256 ;
 int G800x600x64K ;
 int VGA_AVAIL_ACCEL ;
 int VGA_EXT_AVAILABLE ;
 int error (char*) ;
 int g_height ;
 int g_save_mem ;
 int g_server_Bpp ;
 int g_width ;
 int has_fill_box ;
 int has_put_image ;
 int has_screen_copy ;
 int key_event ;
 scalar_t__ keyboard_init () ;
 int keyboard_seteventhandler (int ) ;
 int mouse_setposition (int,int) ;
 int printf (char*,int) ;
 int sdata ;
 int ui_reset_clip () ;
 scalar_t__ use_accel ;
 int vga_ext_set (int ,int ) ;
 int vga_hasmode (int) ;
 int vga_setmode (int) ;
 int vga_setmousesupport (int) ;
 int xmalloc (int) ;

int ui_create_window(void)
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
    error("Invalid width / height");
    return 0;
  }
  ui_reset_clip();
  if (!vga_hasmode(vgamode))
  {
    error("Graphics unavailable");
    return 0;
  }
  vga_setmousesupport(1);
  mouse_setposition(g_width / 2, g_height / 2);
  vga_setmode(vgamode);
  if (keyboard_init())
  {
    error("Keyboard unavailable");
    return 0;
  }
  keyboard_seteventhandler(key_event);
  if (use_accel)
  {
    i = vga_ext_set(VGA_EXT_AVAILABLE, VGA_AVAIL_ACCEL);
    if (i & ACCELFLAG_PUTIMAGE)
      has_put_image = 1;
    if (i & ACCELFLAG_SCREENCOPY)
      has_screen_copy = 1;
    if (i & ACCELFLAG_FILLBOX)
      has_fill_box = 1;
    printf("accel %d\n", i);
  }
  if (!has_screen_copy && !g_save_mem)
    sdata = xmalloc(g_width * g_height * g_server_Bpp);
  return 1;
}
