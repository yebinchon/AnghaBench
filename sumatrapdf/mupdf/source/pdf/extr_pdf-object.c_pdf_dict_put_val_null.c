
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_4__ {int len; TYPE_1__* items; } ;
struct TYPE_3__ {int v; } ;


 TYPE_2__* DICT (int *) ;
 int FZ_ERROR_GENERIC ;
 int OBJ_IS_DICT (int *) ;
 int PDF_NULL ;
 int RESOLVE (int *) ;
 int fz_throw (int *,int ,char*,...) ;
 int pdf_drop_obj (int *,int ) ;
 int pdf_objkindstr (int *) ;
 int prepare_object_for_alteration (int *,int *,int *) ;

void
pdf_dict_put_val_null(fz_context *ctx, pdf_obj *obj, int idx)
{
 RESOLVE(obj);
 if (!OBJ_IS_DICT(obj))
  fz_throw(ctx, FZ_ERROR_GENERIC, "not a dict (%s)", pdf_objkindstr(obj));
 if (idx < 0 || idx >= DICT(obj)->len)
  fz_throw(ctx, FZ_ERROR_GENERIC, "index out of bounds");

 prepare_object_for_alteration(ctx, obj, ((void*)0));
 pdf_drop_obj(ctx, DICT(obj)->items[idx].v);
 DICT(obj)->items[idx].v = PDF_NULL;
}
