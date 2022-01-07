
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int loc_info; int stgclass; int * eval; int * attrs; int * type; } ;
typedef TYPE_1__ var_t ;


 int STG_NONE ;
 int init_loc_info (int *) ;
 TYPE_1__* xmalloc (int) ;

var_t *make_var(char *name)
{
  var_t *v = xmalloc(sizeof(var_t));
  v->name = name;
  v->type = ((void*)0);
  v->attrs = ((void*)0);
  v->eval = ((void*)0);
  v->stgclass = STG_NONE;
  init_loc_info(&v->loc_info);
  return v;
}
