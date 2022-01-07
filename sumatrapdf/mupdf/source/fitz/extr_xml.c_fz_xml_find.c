
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_2__ u; } ;
typedef TYPE_3__ fz_xml ;


 int strcmp (int ,char const*) ;

fz_xml *fz_xml_find(fz_xml *item, const char *tag)
{
 while (item)
 {
  if (!strcmp(item->u.d.name, tag))
   return item;
  item = item->next;
 }
 return ((void*)0);
}
