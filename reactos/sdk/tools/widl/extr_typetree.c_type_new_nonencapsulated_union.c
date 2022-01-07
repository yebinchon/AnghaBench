
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int var_list_t ;
struct TYPE_9__ {TYPE_3__* structure; } ;
struct TYPE_10__ {char const* name; int defined; TYPE_1__ details; } ;
typedef TYPE_2__ type_t ;
struct TYPE_11__ {int * fields; } ;


 int TRUE ;
 int TYPE_UNION ;
 int add_incomplete (TYPE_2__*) ;
 TYPE_2__* find_type (char const*,int *,int ) ;
 TYPE_2__* make_type (int ) ;
 int reg_type (TYPE_2__*,char const*,int *,int ) ;
 int tsUNION ;
 TYPE_3__* xmalloc (int) ;

type_t *type_new_nonencapsulated_union(const char *name, int defined, var_list_t *fields)
{
    type_t *tag_type = name ? find_type(name, ((void*)0), tsUNION) : ((void*)0);
    type_t *t = make_type(TYPE_UNION);
    t->name = name;
    if (tag_type && tag_type->details.structure)
        t->details.structure = tag_type->details.structure;
    else if (defined)
    {
        t->details.structure = xmalloc(sizeof(*t->details.structure));
        t->details.structure->fields = fields;
        t->defined = TRUE;
    }
    if (name)
    {
        if (defined)
            reg_type(t, name, ((void*)0), tsUNION);
        else
            add_incomplete(t);
    }
    return t;
}
