
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; } ;
struct TYPE_7__ {TYPE_1__ d; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ fz_xml ;


 int FZ_TEXT_ITEM (TYPE_3__*) ;

char *fz_xml_tag(fz_xml *item)
{
 return item && !FZ_TEXT_ITEM(item) && item->u.d.name[0] ? item->u.d.name : ((void*)0);
}
