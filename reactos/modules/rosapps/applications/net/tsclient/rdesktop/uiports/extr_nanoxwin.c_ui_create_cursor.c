
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef scalar_t__ GR_CURSOR_ID ;
typedef int GR_BITMAP ;


 scalar_t__ GrNewCursor (int,int,int ,int ,int,int ,int *,int *) ;
 int flipover (int *) ;
 int is1on (int *,int,int) ;
 int is24on (int *,int,int) ;
 int memset (int *,int ,int) ;
 int set1 (int *,int,int) ;
 int * ui_create_glyph (int,int,int *) ;
 int ui_destroy_glyph (int *) ;

void * ui_create_cursor(uint32 x, uint32 y,
                        int width, int height,
                        uint8 * andmask, uint8 * xormask)
{
  uint8 adata[128];
  uint8 amask[128];
  GR_BITMAP * databitmap;
  GR_BITMAP * maskbitmap;
  GR_CURSOR_ID cursor;
  int i1, i2, bon, mon;

  if (width != 32 || height != 32)
  {
    return 0;
  }
  memset(adata, 0, 128);
  memset(amask, 0, 128);
  for (i1 = 0; i1 <= 31; i1++)
  {
    for (i2 = 0; i2 <= 31; i2++)
    {
      mon = is24on(xormask, i1, i2);
      bon = is1on(andmask, i1, i2);
      if (bon ^ mon)
      {
        set1(adata, i1, i2);
        if (!mon)
        {
          set1(amask, i1, i2);
        }
      }
      if (mon)
      {
        set1(amask, i1, i2);
      }
    }
  }
  flipover(adata);
  flipover(amask);
  databitmap = ui_create_glyph(32, 32, adata);
  maskbitmap = ui_create_glyph(32, 32, amask);
  cursor = GrNewCursor(32, 32, x, y, 0xffffff, 0, databitmap, maskbitmap);
  ui_destroy_glyph(databitmap);
  ui_destroy_glyph(maskbitmap);
  return (void*)cursor;
}
