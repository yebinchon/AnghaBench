
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ started; scalar_t__ countdown; int state; int length; scalar_t__ runlen; scalar_t__ blippos; scalar_t__ bliplen; int * glyph; } ;
typedef TYPE_1__ MATRIX_COLUMN ;
typedef int GLYPH ;


 int DENSITY ;
 int DENSITY_MAX ;
 int DENSITY_MIN ;
 int DarkenGlyph (int ) ;
 scalar_t__ FALSE ;
 int GlyphIntensity (int ) ;
 int MAX_INTENSITY ;
 int RandomGlyph (int) ;
 int RedrawBlip (int *,scalar_t__) ;
 scalar_t__ TRUE ;
 int crc_rand () ;

void ScrollMatrixColumn(MATRIX_COLUMN *col)
{
 int y;
 GLYPH lastglyph = 0;
 GLYPH thisglyph;


 if(col->started == FALSE)
 {
  if(--col->countdown <= 0)
   col->started = TRUE;

  return;
 }


 lastglyph = col->state ? (GLYPH)0 : (GLYPH)(MAX_INTENSITY << 8);






 for(y = 0; y < col->length; y++)
 {
  thisglyph = col->glyph[y];




  if(GlyphIntensity(thisglyph) < GlyphIntensity(lastglyph) &&
   GlyphIntensity(thisglyph) == 0)
  {
   col->glyph[y] = RandomGlyph(MAX_INTENSITY - 1);
   y++;
  }



  else if(GlyphIntensity(thisglyph) > GlyphIntensity(lastglyph))
  {
   col->glyph[y] = DarkenGlyph(thisglyph);



   if(GlyphIntensity(thisglyph) == MAX_INTENSITY - 1)
    y++;
  }

  lastglyph = col->glyph[y];
 }


 if(--col->runlen <= 0)
 {
  if(col->state ^= 1)
   col->runlen = crc_rand() % (3 * DENSITY/2) + DENSITY_MIN;
  else
   col->runlen = crc_rand() % (DENSITY_MAX+1-DENSITY) + (DENSITY_MIN*2);
 }






 if(col->blippos >= 0 && col->blippos < col->length)
  RedrawBlip(col->glyph, col->blippos);


 col->blippos += 2;



 if(col->blippos >= col->bliplen)
 {
  col->bliplen = col->length + crc_rand() % 50;
  col->blippos = 0;
 }


 if(col->blippos >= 0 && col->blippos < col->length)
  RedrawBlip(col->glyph, col->blippos);

}
