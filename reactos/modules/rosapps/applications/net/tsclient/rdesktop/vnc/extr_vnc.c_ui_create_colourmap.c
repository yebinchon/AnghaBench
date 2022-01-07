
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rfbColourMap ;
struct TYPE_5__ {int ncolours; TYPE_1__* colours; } ;
struct TYPE_4__ {int blue; int green; int red; } ;
typedef int * HCOLOURMAP ;
typedef TYPE_2__ COLOURMAP ;


 int server ;
 int * vncNewColourMap (int ,int) ;
 int vncSetColourMapEntry (int *,int,int ,int ,int ) ;

HCOLOURMAP
ui_create_colourmap(COLOURMAP * colours)
{
 int i;
 rfbColourMap *map = vncNewColourMap(server, colours->ncolours);
 for (i = 0; i < colours->ncolours; i++)
 {
  vncSetColourMapEntry(map, i, colours->colours[i].red,
         colours->colours[i].green, colours->colours[i].blue);
 }
 return map;
}
