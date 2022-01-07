
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int flags; } ;
typedef TYPE_2__ pdf_obj ;
typedef int fz_context ;
struct TYPE_13__ {int len; TYPE_1__* items; } ;
struct TYPE_11__ {int v; int k; } ;


 TYPE_9__* DICT (TYPE_2__*) ;
 int FZ_ERROR_GENERIC ;
 int OBJ_IS_DICT (TYPE_2__*) ;
 int PDF_FLAGS_SORTED ;
 int RESOLVE (TYPE_2__*) ;
 int fz_throw (int *,int ,char*,...) ;
 int pdf_dict_finds (int *,TYPE_2__*,char const*) ;
 int pdf_drop_obj (int *,int ) ;
 int pdf_objkindstr (TYPE_2__*) ;
 int prepare_object_for_alteration (int *,TYPE_2__*,int *) ;

void
pdf_dict_dels(fz_context *ctx, pdf_obj *obj, const char *key)
{
 int i;

 RESOLVE(obj);
 if (!OBJ_IS_DICT(obj))
  fz_throw(ctx, FZ_ERROR_GENERIC, "not a dict (%s)", pdf_objkindstr(obj));
 if (!key)
  fz_throw(ctx, FZ_ERROR_GENERIC, "key is null");

 prepare_object_for_alteration(ctx, obj, ((void*)0));
 i = pdf_dict_finds(ctx, obj, key);
 if (i >= 0)
 {
  pdf_drop_obj(ctx, DICT(obj)->items[i].k);
  pdf_drop_obj(ctx, DICT(obj)->items[i].v);
  obj->flags &= ~PDF_FLAGS_SORTED;
  DICT(obj)->items[i] = DICT(obj)->items[DICT(obj)->len-1];
  DICT(obj)->len --;
 }
}
