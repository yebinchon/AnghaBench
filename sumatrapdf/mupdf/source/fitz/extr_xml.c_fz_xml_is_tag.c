
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ fz_xml ;


 scalar_t__ FZ_TEXT_ITEM (TYPE_3__*) ;
 int strcmp (int ,char const*) ;

int fz_xml_is_tag(fz_xml *item, const char *name)
{
 if (!item || FZ_TEXT_ITEM(item))
  return 0;
 return !strcmp(item->u.d.name, name);
}
