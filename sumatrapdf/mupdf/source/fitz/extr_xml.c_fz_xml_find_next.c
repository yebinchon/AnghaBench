
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ fz_xml ;


 TYPE_1__* fz_xml_find (TYPE_1__*,char const*) ;

fz_xml *fz_xml_find_next(fz_xml *item, const char *tag)
{
 if (item)
  item = item->next;
 return fz_xml_find(item, tag);
}
