
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int attrs; } ;
typedef TYPE_1__ type_t ;


 int ATTR_DISPINTERFACE ;
 scalar_t__ is_attr (int ,int ) ;
 scalar_t__ is_local (int ) ;
 int is_object (TYPE_1__ const*) ;

int need_proxy(const type_t *iface)
{
    if (!is_object( iface )) return 0;
    if (is_local( iface->attrs )) return 0;
    if (is_attr( iface->attrs, ATTR_DISPINTERFACE )) return 0;
    return 1;
}
