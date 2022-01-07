
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int declptr; unsigned int dim; unsigned char ptr_def_fc; TYPE_3__* elem; int * size_is; int * length_is; } ;
struct TYPE_8__ {TYPE_1__ array; } ;
struct TYPE_9__ {TYPE_2__ details; int name; } ;
typedef TYPE_3__ type_t ;
typedef int expr_t ;


 int TYPE_ARRAY ;
 TYPE_3__* make_type (int ) ;
 int xstrdup (char const*) ;

type_t *type_new_array(const char *name, type_t *element, int declptr,
                       unsigned int dim, expr_t *size_is, expr_t *length_is,
                       unsigned char ptr_default_fc)
{
    type_t *t = make_type(TYPE_ARRAY);
    if (name) t->name = xstrdup(name);
    t->details.array.declptr = declptr;
    t->details.array.length_is = length_is;
    if (size_is)
        t->details.array.size_is = size_is;
    else
        t->details.array.dim = dim;
    t->details.array.elem = element;
    t->details.array.ptr_def_fc = ptr_default_fc;
    return t;
}
