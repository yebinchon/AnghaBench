
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int attrs; } ;
typedef TYPE_1__ type_t ;


 int is_local (int ) ;
 int is_object (TYPE_1__ const*) ;

int need_stub(const type_t *iface)
{
  return !is_object(iface) && !is_local(iface->attrs);
}
