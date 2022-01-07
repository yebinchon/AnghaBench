
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int x; int y; int* data; scalar_t__ pixmap; } ;
typedef TYPE_1__ fz_glyph ;


 int fputc (char,int ) ;
 int printf (char*,...) ;
 int stdout ;

void
fz_dump_glyph(fz_glyph *glyph)
{
 int x, y;

 if (glyph->pixmap)
 {
  printf("pixmap glyph\n");
  return;
 }
 printf("glyph: %dx%d @ (%d,%d)\n", glyph->w, glyph->h, glyph->x, glyph->y);

 for (y = 0; y < glyph->h; y++)
 {
  int offset = ((int *)(glyph->data))[y];
  if (offset >= 0)
  {
   int extend = 0;
   int eol = 0;
   x = glyph->w;
   do
   {
    int v = glyph->data[offset++];
    int len;
    char c;
    switch(v&3)
    {
    case 0:
     extend = v>>2;
     len = 0;
     break;
    case 1:
     len = 1 + (v>>2) + (extend<<6);
     extend = 0;
     c = '.';
     break;
    case 2:
     len = 1 + (v>>3) + (extend<<5);
     extend = 0;
     eol = v & 4;
     c = (eol ? '$' :'#');
     break;
    default:
     len = 1 + (v>>3) + (extend<<5);
     extend = 0;
     offset += len;
     eol = v & 4;
     c = (eol ? '!' : '?');
     break;
    }
    x -= len;
    while (len--)
     fputc(c, stdout);
    if (eol)
     break;
   }
   while (x > 0);
  }
  printf("\n");
 }
}
