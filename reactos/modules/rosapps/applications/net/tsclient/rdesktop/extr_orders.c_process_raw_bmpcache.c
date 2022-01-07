
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef int HBITMAP ;


 int DEBUG (char*) ;
 int cache_put_bitmap (int *,int,int ,int ) ;
 int in_uint16_le (int ,int ) ;
 int in_uint8 (int ,int) ;
 int in_uint8p (int ,int*,int ) ;
 int in_uint8s (int ,int) ;
 int* inverted ;
 int memcpy (int*,int*,int) ;
 int ui_create_bitmap (int *,int,int,int*) ;
 int xfree (int*) ;
 scalar_t__ xmalloc (int) ;
 int y ;

__attribute__((used)) static void
process_raw_bmpcache(RDPCLIENT * This, STREAM s)
{
 HBITMAP bitmap;
 uint16 cache_idx, bufsize;
 uint8 cache_id, width, height, bpp, Bpp;
 uint8 *data;

 in_uint8(s, cache_id);
 in_uint8s(s, 1);
 in_uint8(s, width);
 in_uint8(s, height);
 in_uint8(s, bpp);
 Bpp = (bpp + 7) / 8;
 in_uint16_le(s, bufsize);
 in_uint16_le(s, cache_idx);
 in_uint8p(s, data, bufsize);

 DEBUG(("RAW_BMPCACHE(cx=%d,cy=%d,id=%d,idx=%d)\n", width, height, cache_id, cache_idx));
 bitmap = ui_create_bitmap(This, width, height, data);


 cache_put_bitmap(This, cache_id, cache_idx, bitmap);
}
