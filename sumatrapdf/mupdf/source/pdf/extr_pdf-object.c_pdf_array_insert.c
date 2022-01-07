
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_3__ {int len; int cap; int * items; } ;


 TYPE_1__* ARRAY (int *) ;
 int FZ_ERROR_GENERIC ;
 int OBJ_IS_ARRAY (int *) ;
 int RESOLVE (int *) ;
 int fz_throw (int *,int ,char*,...) ;
 int memmove (int *,int *,int) ;
 int pdf_array_grow (int *,TYPE_1__*) ;
 int pdf_keep_obj (int *,int *) ;
 int pdf_objkindstr (int *) ;
 int prepare_object_for_alteration (int *,int *,int *) ;

void
pdf_array_insert(fz_context *ctx, pdf_obj *obj, pdf_obj *item, int i)
{
 RESOLVE(obj);
 if (!OBJ_IS_ARRAY(obj))
  fz_throw(ctx, FZ_ERROR_GENERIC, "not an array (%s)", pdf_objkindstr(obj));
 if (i < 0 || i > ARRAY(obj)->len)
  fz_throw(ctx, FZ_ERROR_GENERIC, "index out of bounds");
 prepare_object_for_alteration(ctx, obj, item);
 if (ARRAY(obj)->len + 1 > ARRAY(obj)->cap)
  pdf_array_grow(ctx, ARRAY(obj));
 memmove(ARRAY(obj)->items + i + 1, ARRAY(obj)->items + i, (ARRAY(obj)->len - i) * sizeof(pdf_obj*));
 ARRAY(obj)->items[i] = pdf_keep_obj(ctx, item);
 ARRAY(obj)->len++;
}
