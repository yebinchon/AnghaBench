
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int var_list_t ;
struct TYPE_9__ {TYPE_3__* enumeration; } ;
struct TYPE_10__ {char const* name; int defined; TYPE_1__ details; struct namespace* namespace; } ;
typedef TYPE_2__ type_t ;
struct namespace {int dummy; } ;
struct TYPE_11__ {int * enums; } ;


 int TRUE ;
 int TYPE_ENUM ;
 int add_incomplete (TYPE_2__*) ;
 TYPE_2__* find_type (char const*,struct namespace*,int ) ;
 TYPE_2__* make_type (int ) ;
 int reg_type (TYPE_2__*,char const*,struct namespace*,int ) ;
 int tsENUM ;
 TYPE_3__* xmalloc (int) ;

type_t *type_new_enum(const char *name, struct namespace *namespace, int defined, var_list_t *enums)
{
    type_t *tag_type = name ? find_type(name, namespace, tsENUM) : ((void*)0);
    type_t *t = make_type(TYPE_ENUM);
    t->name = name;
    t->namespace = namespace;

    if (tag_type && tag_type->details.enumeration)
        t->details.enumeration = tag_type->details.enumeration;
    else if (defined)
    {
        t->details.enumeration = xmalloc(sizeof(*t->details.enumeration));
        t->details.enumeration->enums = enums;
        t->defined = TRUE;
    }

    if (name)
    {
        if (defined)
            reg_type(t, name, namespace, tsENUM);
        else
            add_incomplete(t);
    }
    return t;
}
