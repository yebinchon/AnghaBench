
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int len; int current; TYPE_1__* ocgs; int intent; } ;
typedef TYPE_2__ pdf_ocg_descriptor ;
typedef int pdf_obj ;
struct TYPE_10__ {TYPE_2__* ocg; } ;
typedef TYPE_3__ pdf_document ;
typedef int fz_context ;
struct TYPE_8__ {int state; int obj; } ;


 int BaseState ;
 int Configs ;
 int D ;
 int FZ_ERROR_GENERIC ;
 int Intent ;
 int OCProperties ;
 int OFF ;
 int ON ;
 int PDF_NAME (int ) ;
 int Root ;
 int Unchanged ;
 int drop_ui (int *,TYPE_2__*) ;
 int fz_throw (int *,int ,char*) ;
 int load_ui (int *,TYPE_2__*,int *,int *) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_drop_obj (int *,int ) ;
 int pdf_keep_obj (int *,int *) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;
 int pdf_objcmp_resolve (int *,int ,int *) ;
 int * pdf_trailer (int *,TYPE_3__*) ;

void
pdf_select_layer_config(fz_context *ctx, pdf_document *doc, int config)
{
 int i, j, len, len2;
 pdf_ocg_descriptor *desc = doc->ocg;
 pdf_obj *obj, *cobj;
 pdf_obj *name;

 obj = pdf_dict_get(ctx, pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root)), PDF_NAME(OCProperties));
 if (!obj)
 {
  if (config == 0)
   return;
  else
   fz_throw(ctx, FZ_ERROR_GENERIC, "Unknown Layer config (None known!)");
 }

 cobj = pdf_array_get(ctx, pdf_dict_get(ctx, obj, PDF_NAME(Configs)), config);
 if (!cobj)
 {
  if (config != 0)
   fz_throw(ctx, FZ_ERROR_GENERIC, "Illegal Layer config");
  cobj = pdf_dict_get(ctx, obj, PDF_NAME(D));
  if (!cobj)
   fz_throw(ctx, FZ_ERROR_GENERIC, "No default Layer config");
 }

 pdf_drop_obj(ctx, desc->intent);
 desc->intent = pdf_keep_obj(ctx, pdf_dict_get(ctx, cobj, PDF_NAME(Intent)));

 len = desc->len;
 name = pdf_dict_get(ctx, cobj, PDF_NAME(BaseState));
 if (pdf_name_eq(ctx, name, PDF_NAME(Unchanged)))
 {

 }
 else if (pdf_name_eq(ctx, name, PDF_NAME(OFF)))
 {
  for (i = 0; i < len; i++)
  {
   desc->ocgs[i].state = 0;
  }
 }
 else
 {
  for (i = 0; i < len; i++)
  {
   desc->ocgs[i].state = 1;
  }
 }

 obj = pdf_dict_get(ctx, cobj, PDF_NAME(ON));
 len2 = pdf_array_len(ctx, obj);
 for (i = 0; i < len2; i++)
 {
  pdf_obj *o = pdf_array_get(ctx, obj, i);
  for (j=0; j < len; j++)
  {
   if (!pdf_objcmp_resolve(ctx, desc->ocgs[j].obj, o))
   {
    desc->ocgs[j].state = 1;
    break;
   }
  }
 }

 obj = pdf_dict_get(ctx, cobj, PDF_NAME(OFF));
 len2 = pdf_array_len(ctx, obj);
 for (i = 0; i < len2; i++)
 {
  pdf_obj *o = pdf_array_get(ctx, obj, i);
  for (j=0; j < len; j++)
  {
   if (!pdf_objcmp_resolve(ctx, desc->ocgs[j].obj, o))
   {
    desc->ocgs[j].state = 0;
    break;
   }
  }
 }

 desc->current = config;

 drop_ui(ctx, desc);
 load_ui(ctx, desc, obj, cobj);
}
