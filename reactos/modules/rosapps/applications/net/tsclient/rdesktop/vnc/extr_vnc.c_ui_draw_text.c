
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef int FONTGLYPH ;
typedef TYPE_1__ DATABLOB ;


 int DO_GLYPH (int*,int) ;
 int MIX_OPAQUE ;
 int TEXT2_IMPLICIT_X ;
 TYPE_1__* cache_get_text (int) ;
 int cache_put_text (int,int*,int) ;
 int error (char*) ;
 int ui_rect (int,int,int,int,int) ;

void
ui_draw_text(uint8 font, uint8 flags, int mixmode, int x, int y,
      int clipx, int clipy, int clipcx, int clipcy,
      int boxx, int boxy, int boxcx, int boxcy,
      int bgcolour, int fgcolour, uint8 * text, uint8 length)
{
 FONTGLYPH *glyph;
 int i, j, offset;
 DATABLOB *entry;

 if (boxcx > 1)
 {
  ui_rect(boxx, boxy, boxcx, boxcy, bgcolour);
 }
 else if (mixmode == MIX_OPAQUE)
 {
  ui_rect(clipx, clipy, clipcx, clipcy, bgcolour);
 }


 for (i = 0; i < length;)
 {
  switch (text[i])
  {
   case 0xff:
    if (i + 2 < length)
     cache_put_text(text[i + 1], &(text[i - text[i + 2]]),
             text[i + 2]);
    else
    {
     error("this shouldn't be happening\n");
     break;
    }

    length -= i + 3;
    text = &(text[i + 3]);
    i = 0;
    break;

   case 0xfe:
    entry = cache_get_text(text[i + 1]);
    if (entry != ((void*)0))
    {
     if ((((uint8 *) (entry->data))[1] == 0)
         && (!(flags & TEXT2_IMPLICIT_X)))
     {
      if (flags & 0x04)
       y += text[i + 2];
      else
       x += text[i + 2];
     }
     if (i + 2 < length)
      i += 3;
     else
      i += 2;
     length -= i;

     text = &(text[i]);
     i = 0;
     for (j = 0; j < entry->size; j++)
      DO_GLYPH(((uint8 *) (entry->data)), j);
    }
    break;
   default:
    DO_GLYPH(text, i);
    i++;
    break;
  }
 }
}
