
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int attrs; scalar_t__ ignore; } ;
typedef TYPE_1__ type_t ;


 scalar_t__ is_local (int ) ;
 TYPE_1__* type_iface_get_inherit (TYPE_1__ const*) ;

__attribute__((used)) static int need_delegation(const type_t *iface)
{
    const type_t *parent = type_iface_get_inherit( iface );
    return parent && type_iface_get_inherit(parent) && (parent->ignore || is_local( parent->attrs ));
}
