
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ var_t ;
typedef enum type_type { ____Placeholder_type_type } type_type ;


 int TYPE_COCLASS ;
 int TYPE_INTERFACE ;
 int TYPE_STRUCT ;
 int TYPE_UNION ;
 int type_function_get_rettype (int ) ;
 int type_get_type (int ) ;

__attribute__((used)) static int is_aggregate_return(const var_t *func)
{
  enum type_type type = type_get_type(type_function_get_rettype(func->type));
  return type == TYPE_STRUCT || type == TYPE_UNION ||
         type == TYPE_COCLASS || type == TYPE_INTERFACE;
}
