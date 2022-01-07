
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint8 ;
typedef int uint32_t ;
typedef TYPE_1__* rfbCursorPtr ;
typedef int rfbCursor ;
typedef int rfbColourMap ;
struct TYPE_4__ {int colourMap; } ;
struct TYPE_3__ {int width; int height; unsigned int xhot; unsigned int yhot; char* mask; int* richSource; int backRed; int backGreen; int backBlue; scalar_t__ foreBlue; scalar_t__ foreGreen; scalar_t__ foreRed; scalar_t__ cleanup; scalar_t__ source; } ;
typedef int HCURSOR ;


 TYPE_2__* server ;
 int vncLookupColour (int *,int*) ;
 int* xmalloc (int) ;

HCURSOR
ui_create_cursor(unsigned int x, unsigned int y, int width, int height, uint8 * mask, uint8 * data)
{
 int i, j;
 uint8_t *d0, *d1;
 uint8_t *cdata;
 uint8_t white[3] = { 0xff, 0xff, 0xff };
 uint8_t black[3] = { 0, 0, 0 };
 uint8_t *cur;
 rfbCursorPtr cursor;
 rfbColourMap *colourMap = &server->colourMap;

 cdata = xmalloc(sizeof(uint8_t) * width * height);
 d0 = xmalloc(sizeof(uint32_t) * width * height / 4);
 d1 = (uint8_t *) mask;
 for (j = 0; j < height; j++)
  for (i = 0; i < width / 8; i++)
  {
   d0[j * width / 8 + i] = d1[(height - 1 - j) * width / 8 + i] ^ 0xffffffff;
  }
 for (j = 0; j < height; j++)
 {
  for (i = 0; i < width; i++)
  {


   cur = data + ((height - 1 - j) * width + i) * 3;
   if (cur[0] > 0x80 || cur[1] > 0x80 || cur[2] > 0x80)
   {
    if (!(d0[(j * width + i) / 8] & (0x80 >> (i & 7))))
    {

     cdata[j * width + i] = vncLookupColour(colourMap, black);
     d0[(j * width + i) / 8] |= 0x80 >> (i & 7);
    }
    else
     cdata[j * width + i] = vncLookupColour(colourMap, white);
   }
   else
    cdata[j * width + i] = vncLookupColour(colourMap, cur);
  }
 }
 cursor = (rfbCursorPtr) xmalloc(sizeof(rfbCursor));
 cursor->width = width;
 cursor->height = height;
 cursor->xhot = x;
 cursor->yhot = y;
 cursor->mask = (char *) d0;
 cursor->source = 0;
 cursor->richSource = cdata;
 cursor->cleanup = 0;

 cursor->backRed = cursor->backGreen = cursor->backBlue = 0xffff;
 cursor->foreRed = cursor->foreGreen = cursor->foreBlue = 0;

 return (HCURSOR) cursor;
}
