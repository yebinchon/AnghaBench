
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCOLOURMAP ;


 int vncDeleteColourMap (int ) ;

void
ui_destroy_colourmap(HCOLOURMAP map)
{
 vncDeleteColourMap(map);
}
