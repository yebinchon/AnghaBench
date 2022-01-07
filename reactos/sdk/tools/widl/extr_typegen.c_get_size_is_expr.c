
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int type_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ expr_t ;


 scalar_t__ EXPR_VOID ;
 int error (char*,char const*) ;
 scalar_t__ is_array (int const*) ;
 TYPE_1__* type_array_get_conformance (int const*) ;
 int * type_array_get_element (int const*) ;
 scalar_t__ type_array_has_conformance (int const*) ;

expr_t *get_size_is_expr(const type_t *t, const char *name)
{
    expr_t *x = ((void*)0);

    for ( ; is_array(t); t = type_array_get_element(t))
        if (type_array_has_conformance(t) &&
            type_array_get_conformance(t)->type != EXPR_VOID)
        {
            if (!x)
                x = type_array_get_conformance(t);
            else
                error("%s: multidimensional conformant"
                      " arrays not supported at the top level\n",
                      name);
        }

    return x;
}
