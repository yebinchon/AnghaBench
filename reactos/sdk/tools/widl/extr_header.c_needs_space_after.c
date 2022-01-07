
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ name; } ;
typedef TYPE_1__ type_t ;


 int is_array (TYPE_1__*) ;
 int is_ptr (TYPE_1__*) ;
 int type_array_is_decl_as_ptr (TYPE_1__*) ;
 scalar_t__ type_is_alias (TYPE_1__*) ;

int needs_space_after(type_t *t)
{
  return (type_is_alias(t) ||
          (!is_ptr(t) && (!is_array(t) || !type_array_is_decl_as_ptr(t) || t->name)));
}
