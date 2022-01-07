
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_4__ {int * items; } ;
struct TYPE_3__ {int len; int * items; } ;


 TYPE_2__* ARRAY (int *) ;
 TYPE_1__* DICT (int *) ;
 int fz_free (int *,int *) ;
 int pdf_drop_obj (int *,int ) ;

__attribute__((used)) static void
pdf_drop_array(fz_context *ctx, pdf_obj *obj)
{
 int i;

 for (i = 0; i < DICT(obj)->len; i++)
  pdf_drop_obj(ctx, ARRAY(obj)->items[i]);

 fz_free(ctx, DICT(obj)->items);
 fz_free(ctx, obj);
}
