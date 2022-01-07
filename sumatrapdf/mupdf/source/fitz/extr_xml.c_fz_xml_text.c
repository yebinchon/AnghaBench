
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* text; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ fz_xml ;


 scalar_t__ FZ_TEXT_ITEM (TYPE_2__*) ;

char *fz_xml_text(fz_xml *item)
{
 return (item && FZ_TEXT_ITEM(item)) ? item->u.text : ((void*)0);
}
