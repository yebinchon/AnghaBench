
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {int len; scalar_t__* items; } ;


 TYPE_1__* ARRAY (int *) ;
 int FZ_ERROR_GENERIC ;
 int OBJ_IS_ARRAY (int *) ;
 int RESOLVE (int *) ;
 int fz_throw (int *,int ,char*,...) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int pdf_drop_obj (int *,scalar_t__) ;
 int pdf_objkindstr (int *) ;
 int prepare_object_for_alteration (int *,int *,int *) ;

void
pdf_array_delete(fz_context *ctx, pdf_obj *obj, int i)
{
 RESOLVE(obj);
 if (!OBJ_IS_ARRAY(obj))
  fz_throw(ctx, FZ_ERROR_GENERIC, "not an array (%s)", pdf_objkindstr(obj));
 if (i < 0 || i >= ARRAY(obj)->len)
  fz_throw(ctx, FZ_ERROR_GENERIC, "index out of bounds");
 prepare_object_for_alteration(ctx, obj, ((void*)0));
 pdf_drop_obj(ctx, ARRAY(obj)->items[i]);
 ARRAY(obj)->items[i] = 0;
 ARRAY(obj)->len--;
 memmove(ARRAY(obj)->items + i, ARRAY(obj)->items + i + 1, (ARRAY(obj)->len - i) * sizeof(pdf_obj*));
}
