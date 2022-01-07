
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int tcursor ;


 int * desk_save ;
 int g_server_Bpp ;
 int mcursor ;
 int memset (int *,int ,int) ;
 int vga_init () ;
 scalar_t__ xmalloc (int) ;

int ui_init(void)
{
  vga_init();
  memset(&mcursor, 0, sizeof(tcursor));
  desk_save = (uint8*)xmalloc(0x38400 * g_server_Bpp);
  return 1;
}
