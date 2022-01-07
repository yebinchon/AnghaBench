
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int FC_RP ;
 int TRUE ;
 int type_new_alias (int *,char*) ;
 int * type_new_array (int *,int ,int ,int ,int *,int *,int ) ;

__attribute__((used)) static type_t *make_safearray(type_t *type)
{
  return type_new_array(((void*)0), type_new_alias(type, "SAFEARRAY"), TRUE, 0,
                        ((void*)0), ((void*)0), FC_RP);
}
