
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef enum type_basic_type { ____Placeholder_type_basic_type } type_basic_type ;


 int reg_type (int *,char const*,int *,int ) ;
 int * type_new_basic (int) ;

__attribute__((used)) static void decl_builtin_basic(const char *name, enum type_basic_type type)
{
  type_t *t = type_new_basic(type);
  reg_type(t, name, ((void*)0), 0);
}
