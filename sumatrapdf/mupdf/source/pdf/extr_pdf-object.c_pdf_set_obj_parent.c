
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_16__ {int kind; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;
struct TYPE_15__ {int parent_num; } ;
struct TYPE_14__ {int parent_num; } ;


 TYPE_12__* ARRAY (TYPE_1__*) ;
 TYPE_10__* DICT (TYPE_1__*) ;


 TYPE_1__* PDF_LIMIT ;
 TYPE_1__* pdf_array_get (int *,TYPE_1__*,int) ;
 int pdf_array_len (int *,TYPE_1__*) ;
 TYPE_1__* pdf_dict_get_val (int *,TYPE_1__*,int) ;
 int pdf_dict_len (int *,TYPE_1__*) ;

void
pdf_set_obj_parent(fz_context *ctx, pdf_obj *obj, int num)
{
 int n, i;

 if (obj < PDF_LIMIT)
  return;

 switch (obj->kind)
 {
 case 129:
  ARRAY(obj)->parent_num = num;
  n = pdf_array_len(ctx, obj);
  for (i = 0; i < n; i++)
   pdf_set_obj_parent(ctx, pdf_array_get(ctx, obj, i), num);
  break;
 case 128:
  DICT(obj)->parent_num = num;
  n = pdf_dict_len(ctx, obj);
  for (i = 0; i < n; i++)
   pdf_set_obj_parent(ctx, pdf_dict_get_val(ctx, obj, i), num);
  break;
 }
}
