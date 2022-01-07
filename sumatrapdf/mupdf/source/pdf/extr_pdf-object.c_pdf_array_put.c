
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {int len; int * items; } ;


 TYPE_1__* ARRAY (int *) ;
 int FZ_ERROR_GENERIC ;
 int OBJ_IS_ARRAY (int *) ;
 int RESOLVE (int *) ;
 int fz_throw (int *,int ,char*,...) ;
 int pdf_array_push (int *,int *,int *) ;
 int pdf_drop_obj (int *,int ) ;
 int pdf_keep_obj (int *,int *) ;
 int pdf_objkindstr (int *) ;
 int prepare_object_for_alteration (int *,int *,int *) ;

void
pdf_array_put(fz_context *ctx, pdf_obj *obj, int i, pdf_obj *item)
{
 RESOLVE(obj);
 if (!OBJ_IS_ARRAY(obj))
  fz_throw(ctx, FZ_ERROR_GENERIC, "not an array (%s)", pdf_objkindstr(obj));
 if (i == ARRAY(obj)->len)
 {
  pdf_array_push(ctx, obj, item);
  return;
 }
 if (i < 0 || i > ARRAY(obj)->len)
  fz_throw(ctx, FZ_ERROR_GENERIC, "index out of bounds");
 prepare_object_for_alteration(ctx, obj, item);
 pdf_drop_obj(ctx, ARRAY(obj)->items[i]);
 ARRAY(obj)->items[i] = pdf_keep_obj(ctx, item);
}
