
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {void* attrs; } ;
typedef TYPE_1__ type_t ;
typedef enum storage_class { ____Placeholder_storage_class } storage_class ;
struct TYPE_12__ {scalar_t__ stgclass; int * attrs; TYPE_1__* type; } ;
typedef TYPE_2__ decl_spec_t ;
typedef int attr_t ;
typedef int attr_list_t ;


 scalar_t__ STG_NONE ;
 int * append_attr (int *,int *) ;
 void* append_attr_list (int *,int *) ;
 int assert (int) ;
 TYPE_1__* duptype (TYPE_1__*,int) ;
 int error_loc (char*) ;
 int free (TYPE_2__*) ;
 int * map_attrs (void*,int *) ;
 TYPE_2__* xmalloc (int) ;

__attribute__((used)) static decl_spec_t *make_decl_spec(type_t *type, decl_spec_t *left, decl_spec_t *right, attr_t *attr, enum storage_class stgclass)
{
  decl_spec_t *declspec = left ? left : right;
  if (!declspec)
  {
    declspec = xmalloc(sizeof(*declspec));
    declspec->type = ((void*)0);
    declspec->attrs = ((void*)0);
    declspec->stgclass = STG_NONE;
  }
  declspec->type = type;
  if (left && declspec != left)
  {
    declspec->attrs = append_attr_list(declspec->attrs, left->attrs);
    if (declspec->stgclass == STG_NONE)
      declspec->stgclass = left->stgclass;
    else if (left->stgclass != STG_NONE)
      error_loc("only one storage class can be specified\n");
    assert(!left->type);
    free(left);
  }
  if (right && declspec != right)
  {
    declspec->attrs = append_attr_list(declspec->attrs, right->attrs);
    if (declspec->stgclass == STG_NONE)
      declspec->stgclass = right->stgclass;
    else if (right->stgclass != STG_NONE)
      error_loc("only one storage class can be specified\n");
    assert(!right->type);
    free(right);
  }

  declspec->attrs = append_attr(declspec->attrs, attr);
  if (declspec->stgclass == STG_NONE)
    declspec->stgclass = stgclass;
  else if (stgclass != STG_NONE)
    error_loc("only one storage class can be specified\n");


  if (type && declspec->attrs)
  {
    attr_list_t *attrs;
    declspec->type = duptype(type, 1);
    attrs = map_attrs(type->attrs, ((void*)0));
    declspec->type->attrs = append_attr_list(attrs, declspec->attrs);
    declspec->attrs = ((void*)0);
  }

  return declspec;
}
