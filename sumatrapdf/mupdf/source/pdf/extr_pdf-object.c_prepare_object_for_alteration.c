
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_16__ {int kind; } ;
typedef TYPE_1__ pdf_obj ;
struct TYPE_17__ {scalar_t__ repair_attempted; scalar_t__ save_in_progress; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;
struct TYPE_15__ {int parent_num; TYPE_2__* doc; } ;
struct TYPE_14__ {int parent_num; TYPE_2__* doc; } ;


 TYPE_12__* ARRAY (TYPE_1__*) ;
 TYPE_10__* DICT (TYPE_1__*) ;
 int FZ_ERROR_GENERIC ;


 TYPE_1__* PDF_LIMIT ;
 int fz_throw (int *,int ,char*) ;
 TYPE_2__* pdf_get_bound_document (int *,TYPE_1__*) ;
 int pdf_set_obj_parent (int *,TYPE_1__*,int) ;
 int pdf_xref_ensure_incremental_object (int *,TYPE_2__*,int) ;

__attribute__((used)) static void prepare_object_for_alteration(fz_context *ctx, pdf_obj *obj, pdf_obj *val)
{
 pdf_document *doc, *val_doc;
 int parent;





 if (obj < PDF_LIMIT)
  return;

 switch (obj->kind)
 {
 case 128:
  doc = DICT(obj)->doc;
  parent = DICT(obj)->parent_num;
  break;
 case 129:
  doc = ARRAY(obj)->doc;
  parent = ARRAY(obj)->parent_num;
  break;
 default:
  return;
 }

 if (val)
 {
  val_doc = pdf_get_bound_document(ctx, val);
  if (doc && val_doc && val_doc != doc)
   fz_throw(ctx, FZ_ERROR_GENERIC, "container and item belong to different documents");
 }





 if (parent == 0 || doc->save_in_progress || doc->repair_attempted)
  return;






 pdf_xref_ensure_incremental_object(ctx, doc, parent);
 pdf_set_obj_parent(ctx, val, parent);
}
