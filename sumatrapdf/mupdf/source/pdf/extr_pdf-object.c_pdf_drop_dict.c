
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int v; int k; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;
struct TYPE_7__ {int len; TYPE_1__* items; } ;


 TYPE_4__* DICT (TYPE_1__*) ;
 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_obj (int *,int ) ;

__attribute__((used)) static void
pdf_drop_dict(fz_context *ctx, pdf_obj *obj)
{
 int i;

 for (i = 0; i < DICT(obj)->len; i++) {
  pdf_drop_obj(ctx, DICT(obj)->items[i].k);
  pdf_drop_obj(ctx, DICT(obj)->items[i].v);
 }

 fz_free(ctx, DICT(obj)->items);
 fz_free(ctx, obj);
}
