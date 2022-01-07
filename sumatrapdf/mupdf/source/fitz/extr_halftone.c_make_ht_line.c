
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int w; int h; int n; unsigned char* samples; } ;
typedef TYPE_1__ fz_pixmap ;
struct TYPE_5__ {int n; TYPE_1__** comp; } ;
typedef TYPE_2__ fz_halftone ;


 int assert (int) ;

__attribute__((used)) static void make_ht_line(unsigned char *buf, fz_halftone *ht, int x, int y, int w)
{
 int k, n;
 n = ht->n;
 for (k = 0; k < n; k++)
 {
  fz_pixmap *tile = ht->comp[k];
  unsigned char *b = buf++;
  unsigned char *t;
  unsigned char *tbase;
  int px = x + tile->x;
  int py = y + tile->y;
  int tw = tile->w;
  int th = tile->h;
  int w2 = w;
  int len;
  px = px % tw;
  if (px < 0)
   px += tw;
  py = py % th;
  if (py < 0)
   py += th;

  assert(tile->n == 1);


  tbase = tile->samples + (unsigned int)(py * tw);
  t = tbase + px;
  len = tw - px;
  if (len > w2)
   len = w2;
  w2 -= len;
  while (len--)
  {
   *b = *t++;
   b += n;
  }


  w2 -= tw;
  while (w2 >= 0)
  {
   len = tw;
   t = tbase;
   while (len--)
   {
    *b = *t++;
    b += n;
   }
   w2 -= tw;
  }
  w2 += tw;


  t = tbase;
  while (w2--)
  {
   *b = *t++;
   b += n;
  }
 }
}
