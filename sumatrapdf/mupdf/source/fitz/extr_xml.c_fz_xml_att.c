
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct attribute {char* value; int name; struct attribute* next; } ;
struct TYPE_6__ {struct attribute* atts; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ fz_xml ;


 scalar_t__ FZ_TEXT_ITEM (TYPE_3__*) ;
 int strcmp (int ,char const*) ;

char *fz_xml_att(fz_xml *item, const char *name)
{
 struct attribute *att;
 if (!item || FZ_TEXT_ITEM(item))
  return ((void*)0);
 for (att = item->u.d.atts; att; att = att->next)
  if (!strcmp(att->name, name))
   return att->value;
 return ((void*)0);
}
