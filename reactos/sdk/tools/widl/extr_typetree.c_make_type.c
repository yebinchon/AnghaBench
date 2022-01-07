
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type_type; int ignore; int typelib_idx; int loc_info; void* is_alias; void* checked; void* tfswrite; void* user_types_registered; void* written; void* defined; scalar_t__ ptrdesc; scalar_t__ typestring_offset; int details; int * orig; int * c_name; int * attrs; int * namespace; int * name; } ;
typedef TYPE_1__ type_t ;
typedef enum type_type { ____Placeholder_type_type } type_type ;


 void* FALSE ;
 TYPE_1__* alloc_type () ;
 int init_loc_info (int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ parse_only ;

type_t *make_type(enum type_type type)
{
    type_t *t = alloc_type();
    t->name = ((void*)0);
    t->namespace = ((void*)0);
    t->type_type = type;
    t->attrs = ((void*)0);
    t->c_name = ((void*)0);
    t->orig = ((void*)0);
    memset(&t->details, 0, sizeof(t->details));
    t->typestring_offset = 0;
    t->ptrdesc = 0;
    t->ignore = (parse_only != 0);
    t->defined = FALSE;
    t->written = FALSE;
    t->user_types_registered = FALSE;
    t->tfswrite = FALSE;
    t->checked = FALSE;
    t->is_alias = FALSE;
    t->typelib_idx = -1;
    init_loc_info(&t->loc_info);
    return t;
}
