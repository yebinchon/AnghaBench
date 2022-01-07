
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* down; } ;
typedef TYPE_1__ fz_xml ;


 int FZ_TEXT_ITEM (TYPE_1__*) ;

fz_xml *fz_xml_down(fz_xml *item)
{
 return item && !FZ_TEXT_ITEM(item) ? item->down : ((void*)0);
}
