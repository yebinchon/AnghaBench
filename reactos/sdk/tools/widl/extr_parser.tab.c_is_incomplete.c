
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int defined; } ;
typedef TYPE_1__ type_t ;


 scalar_t__ TYPE_ENCAPSULATED_UNION ;
 scalar_t__ TYPE_STRUCT ;
 scalar_t__ TYPE_UNION ;
 scalar_t__ type_get_type_detect_alias (TYPE_1__ const*) ;

__attribute__((used)) static int is_incomplete(const type_t *t)
{
  return !t->defined &&
    (type_get_type_detect_alias(t) == TYPE_STRUCT ||
     type_get_type_detect_alias(t) == TYPE_UNION ||
     type_get_type_detect_alias(t) == TYPE_ENCAPSULATED_UNION);
}
