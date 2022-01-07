
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int refs; scalar_t__ flags; int kind; } ;
struct TYPE_5__ {int num; int gen; TYPE_2__ super; int * doc; } ;
typedef TYPE_1__ pdf_obj_ref ;
typedef TYPE_2__ pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_SYNTAX ;
 TYPE_1__* Memento_label (int ,char*) ;
 int PDF_INDIRECT ;
 int PDF_MAX_GEN_NUMBER ;
 int PDF_MAX_OBJECT_NUMBER ;
 int fz_malloc (int *,int) ;
 int fz_throw (int *,int ,char*,int) ;

pdf_obj *
pdf_new_indirect(fz_context *ctx, pdf_document *doc, int num, int gen)
{
 pdf_obj_ref *obj;
 if (num < 0 || num > PDF_MAX_OBJECT_NUMBER)
  fz_throw(ctx, FZ_ERROR_SYNTAX, "invalid object number (%d)", num);
 if (gen < 0 || gen > PDF_MAX_GEN_NUMBER)
  fz_throw(ctx, FZ_ERROR_SYNTAX, "invalid generation number (%d)", gen);
 obj = Memento_label(fz_malloc(ctx, sizeof(pdf_obj_ref)), "pdf_obj(indirect)");
 obj->super.refs = 1;
 obj->super.kind = PDF_INDIRECT;
 obj->super.flags = 0;
 obj->doc = doc;
 obj->num = num;
 obj->gen = gen;
 return &obj->super;
}
