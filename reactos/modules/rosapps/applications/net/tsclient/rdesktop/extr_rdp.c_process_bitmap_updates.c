
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int STREAM ;
typedef int RDPCLIENT ;


 int DEBUG (char*) ;
 int DEBUG_RDP5 (char*) ;
 scalar_t__ bitmap_decompress (int *,int,int,int *,int,int) ;
 int free (int *) ;
 int in_uint16_le (int ,int) ;
 int in_uint8a (int ,int *,int) ;
 int in_uint8p (int ,int *,int) ;
 int in_uint8s (int ,int) ;
 scalar_t__ malloc (int) ;
 int ui_paint_bitmap (int *,int,int,int,int,int,int,int *) ;
 int xfree (int *) ;
 scalar_t__ xmalloc (int) ;

void
process_bitmap_updates(RDPCLIENT * This, STREAM s)
{
 uint16 num_updates;
 uint16 left, top, right, bottom, width, height;
 uint16 cx, cy, bpp, Bpp, compress, bufsize, size;
 uint8 *data, *bmpdata;
 int i;

 in_uint16_le(s, num_updates);

 for (i = 0; i < num_updates; i++)
 {
  in_uint16_le(s, left);
  in_uint16_le(s, top);
  in_uint16_le(s, right);
  in_uint16_le(s, bottom);
  in_uint16_le(s, width);
  in_uint16_le(s, height);
  in_uint16_le(s, bpp);
  Bpp = (bpp + 7) / 8;
  in_uint16_le(s, compress);
  in_uint16_le(s, bufsize);

  cx = right - left + 1;
  cy = bottom - top + 1;

  DEBUG(("BITMAP_UPDATE(l=%d,t=%d,r=%d,b=%d,w=%d,h=%d,Bpp=%d,cmp=%d)\n",
         left, top, right, bottom, width, height, Bpp, compress));

  if (!compress)
  {
   in_uint8p(s, bmpdata, width * height * Bpp);
   ui_paint_bitmap(This, left, top, cx, cy, width, height, bmpdata);

   continue;
  }


  if (compress & 0x400)
  {
   size = bufsize;
  }
  else
  {
   in_uint8s(s, 2);
   in_uint16_le(s, size);
   in_uint8s(s, 4);
  }
  in_uint8p(s, data, size);
  bmpdata = (uint8 *) malloc(width * height * Bpp);

  if(bmpdata == ((void*)0))
   return;

  if (bitmap_decompress(bmpdata, width, height, data, size, Bpp))
  {
   ui_paint_bitmap(This, left, top, cx, cy, width, height, bmpdata);
  }
  else
  {
   DEBUG_RDP5(("Failed to decompress data\n"));
  }

  free(bmpdata);
 }
}
