
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_4__ {TYPE_1__* items; } ;
struct TYPE_3__ {int * v; } ;


 TYPE_2__* DICT (int *) ;
 int OBJ_IS_DICT (int *) ;
 int OBJ_IS_NAME (int *) ;
 int * PDF_LIMIT ;
 int RESOLVE (int *) ;
 int pdf_dict_find (int *,int *,int *) ;
 int pdf_dict_finds (int *,int *,int ) ;
 int pdf_to_name (int *,int *) ;

pdf_obj *
pdf_dict_get(fz_context *ctx, pdf_obj *obj, pdf_obj *key)
{
 int i;

 RESOLVE(obj);
 if (!OBJ_IS_DICT(obj))
  return ((void*)0);
 if (!OBJ_IS_NAME(key))
  return ((void*)0);

 if (key < PDF_LIMIT)
  i = pdf_dict_find(ctx, obj, key);
 else
  i = pdf_dict_finds(ctx, obj, pdf_to_name(ctx, key));
 if (i >= 0)
  return DICT(obj)->items[i].v;
 return ((void*)0);
}
