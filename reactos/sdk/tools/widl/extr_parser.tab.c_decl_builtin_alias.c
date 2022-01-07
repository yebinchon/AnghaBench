
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int reg_type (int ,char const*,int *,int ) ;
 int type_new_alias (int *,char const*) ;

__attribute__((used)) static void decl_builtin_alias(const char *name, type_t *t)
{
  reg_type(type_new_alias(t, name), name, ((void*)0), 0);
}
