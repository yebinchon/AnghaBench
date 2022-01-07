
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 scalar_t__ is_array (int *) ;
 scalar_t__ needs_space_after (int *) ;
 int type_array_is_decl_as_ptr (int *) ;
 int type_is_alias (int *) ;

__attribute__((used)) static void write_pointer_left(FILE *h, type_t *ref)
{
    if (needs_space_after(ref))
        fprintf(h, " ");
    if (!type_is_alias(ref) && is_array(ref) && !type_array_is_decl_as_ptr(ref))
        fprintf(h, "(");
    fprintf(h, "*");
}
