
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_5__ {scalar_t__ use_rdp5; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;
typedef int HBITMAP ;


 int DEBUG (char*) ;
 scalar_t__ bitmap_decompress (int*,int,int,int*,int,int) ;
 int cache_put_bitmap (TYPE_1__*,int,int,int ) ;
 int free (int*) ;
 int in_uint16_le (int ,int) ;
 int in_uint8 (int ,int) ;
 int in_uint8p (int ,int*,int) ;
 scalar_t__ malloc (int) ;
 int ui_create_bitmap (TYPE_1__*,int,int,int*) ;

__attribute__((used)) static void
process_bmpcache(RDPCLIENT * This, STREAM s)
{
 HBITMAP bitmap;
 uint16 cache_idx, size;
 uint8 cache_id, width, height, bpp, Bpp;
 uint8 *data, *bmpdata;
 uint16 bufsize, pad2, row_size, final_size;
 uint8 pad1;

 pad2 = row_size = final_size = 0xffff;

 in_uint8(s, cache_id);
 in_uint8(s, pad1);
 in_uint8(s, width);
 in_uint8(s, height);
 in_uint8(s, bpp);
 Bpp = (bpp + 7) / 8;
 in_uint16_le(s, bufsize);
 in_uint16_le(s, cache_idx);

 if (This->use_rdp5)
 {
  size = bufsize;
 }
 else
 {


  in_uint16_le(s, pad2);
  in_uint16_le(s, size);

  in_uint16_le(s, row_size);
  in_uint16_le(s, final_size);

 }
 in_uint8p(s, data, size);

 DEBUG(("BMPCACHE(cx=%d,cy=%d,id=%d,idx=%d,bpp=%d,size=%d,pad1=%d,bufsize=%d,pad2=%d,rs=%d,fs=%d)\n", width, height, cache_id, cache_idx, bpp, size, pad1, bufsize, pad2, row_size, final_size));

 bmpdata = (uint8 *) malloc(width * height * Bpp);

 if(bmpdata == ((void*)0))
  return;

 if (bitmap_decompress(bmpdata, width, height, data, size, Bpp))
 {
  bitmap = ui_create_bitmap(This, width, height, bmpdata);
  cache_put_bitmap(This, cache_id, cache_idx, bitmap);
 }
 else
 {
  DEBUG(("Failed to decompress bitmap data\n"));
 }

 free(bmpdata);
}
