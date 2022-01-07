
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {int width; int height; int Bpp; int * data; } ;
typedef TYPE_1__ bitmap ;
typedef void* HBITMAP ;


 int copy_mem (int *,int *,int) ;
 int g_server_Bpp ;
 scalar_t__ xmalloc (int) ;

HBITMAP ui_create_bitmap(int width, int height, uint8* data)
{
  bitmap* b;

  b = (bitmap*)xmalloc(sizeof(bitmap));
  b->data = (uint8*)xmalloc(width * height * g_server_Bpp);
  b->width = width;
  b->height = height;
  b->Bpp = g_server_Bpp;
  copy_mem(b->data, data, width * height * g_server_Bpp);
  return (void*)b;
}
