
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int type; } ;
typedef TYPE_2__ var_t ;
typedef int var_list_t ;
struct TYPE_11__ {TYPE_4__* structure; } ;
struct TYPE_13__ {int defined; TYPE_1__ details; } ;
typedef TYPE_3__ type_t ;
struct TYPE_14__ {int * fields; } ;


 int TRUE ;
 int TYPE_ENCAPSULATED_UNION ;
 void* append_var (int *,TYPE_2__*) ;
 TYPE_3__* get_type (int ,char*,int *,int ) ;
 TYPE_2__* make_var (int ) ;
 int tsUNION ;
 int type_new_nonencapsulated_union (int *,int ,int *) ;
 TYPE_4__* xmalloc (int) ;
 int xstrdup (char*) ;

type_t *type_new_encapsulated_union(char *name, var_t *switch_field, var_t *union_field, var_list_t *cases)
{
    type_t *t = get_type(TYPE_ENCAPSULATED_UNION, name, ((void*)0), tsUNION);
    if (!union_field) union_field = make_var( xstrdup("tagged_union") );
    union_field->type = type_new_nonencapsulated_union(((void*)0), TRUE, cases);
    t->details.structure = xmalloc(sizeof(*t->details.structure));
    t->details.structure->fields = append_var( ((void*)0), switch_field );
    t->details.structure->fields = append_var( t->details.structure->fields, union_field );
    t->defined = TRUE;
    return t;
}
