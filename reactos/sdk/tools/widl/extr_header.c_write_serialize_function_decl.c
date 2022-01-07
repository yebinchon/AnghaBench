
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int FILE ;


 int write_serialize_functions (int *,int const*,int *) ;

__attribute__((used)) static int write_serialize_function_decl(FILE *header, const type_t *type)
{
    write_serialize_functions(header, type, ((void*)0));
    return 1;
}
