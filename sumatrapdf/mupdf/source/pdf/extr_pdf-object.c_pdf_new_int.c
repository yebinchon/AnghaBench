
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int refs; scalar_t__ flags; int kind; } ;
struct TYPE_6__ {int i; } ;
struct TYPE_7__ {TYPE_3__ super; TYPE_1__ u; } ;
typedef TYPE_2__ pdf_obj_num ;
typedef TYPE_3__ pdf_obj ;
typedef int int64_t ;
typedef int fz_context ;


 TYPE_2__* Memento_label (int ,char*) ;
 int PDF_INT ;
 int fz_malloc (int *,int) ;

pdf_obj *
pdf_new_int(fz_context *ctx, int64_t i)
{
 pdf_obj_num *obj;
 obj = Memento_label(fz_malloc(ctx, sizeof(pdf_obj_num)), "pdf_obj(int)");
 obj->super.refs = 1;
 obj->super.kind = PDF_INT;
 obj->super.flags = 0;
 obj->u.i = i;
 return &obj->super;
}
