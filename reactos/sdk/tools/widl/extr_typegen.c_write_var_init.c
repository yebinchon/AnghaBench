
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef int FILE ;


 scalar_t__ decl_indirect (int const*) ;
 scalar_t__ is_array (int const*) ;
 scalar_t__ is_ptr (int const*) ;
 int print_file (int *,int,char*,char const*,char const*,...) ;

__attribute__((used)) static void write_var_init(FILE *file, int indent, const type_t *t, const char *n, const char *local_var_prefix)
{
    if (decl_indirect(t))
    {
        print_file(file, indent, "MIDL_memset(&%s%s, 0, sizeof(%s%s));\n",
                   local_var_prefix, n, local_var_prefix, n);
        print_file(file, indent, "%s_p_%s = &%s%s;\n", local_var_prefix, n, local_var_prefix, n);
    }
    else if (is_ptr(t) || is_array(t))
        print_file(file, indent, "%s%s = 0;\n", local_var_prefix, n);
}
