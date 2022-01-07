
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCOLOURMAP ;


 int server ;
 int vncSetColourMap (int ,int ) ;

void
ui_set_colourmap(HCOLOURMAP map)
{
 vncSetColourMap(server, map);
}
