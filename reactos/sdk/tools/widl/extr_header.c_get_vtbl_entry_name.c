
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int var_t ;
struct TYPE_4__ {char* name; } ;
typedef TYPE_1__ type_t ;


 char* get_name (int const*) ;
 scalar_t__ is_inherited_method (TYPE_1__ const*,int const*) ;
 int sprintf (char*,char*,char*,...) ;

__attribute__((used)) static char *get_vtbl_entry_name(const type_t *iface, const var_t *func)
{
  static char buff[255];
  if (is_inherited_method(iface, func))
    sprintf(buff, "%s_%s", iface->name, get_name(func));
  else
    sprintf(buff, "%s", get_name(func));
  return buff;
}
