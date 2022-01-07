
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int loc_info; int details; int is_alias; struct TYPE_6__* orig; int * attrs; int name; } ;
typedef TYPE_1__ type_t ;


 int TRUE ;
 TYPE_1__* duptype (TYPE_1__*,int ) ;
 int init_loc_info (int *) ;
 int xstrdup (char const*) ;

type_t *type_new_alias(type_t *t, const char *name)
{
    type_t *a = duptype(t, 0);

    a->name = xstrdup(name);
    a->attrs = ((void*)0);
    a->orig = t;
    a->is_alias = TRUE;

    a->details = t->details;
    init_loc_info(&a->loc_info);

    return a;
}
