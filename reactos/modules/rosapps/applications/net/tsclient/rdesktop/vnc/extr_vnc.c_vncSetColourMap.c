
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rfbScreenInfoPtr ;
typedef int rfbColourMap ;
struct TYPE_4__ {int colourMap; } ;


 int rfbSetClientColourMaps (TYPE_1__*,int ,int ) ;
 int vncDeleteColourMap (int *) ;

void
vncSetColourMap(rfbScreenInfoPtr s, rfbColourMap * m)
{
 vncDeleteColourMap(&s->colourMap);
 s->colourMap = *m;
 rfbSetClientColourMaps(s, 0, 0);
}
