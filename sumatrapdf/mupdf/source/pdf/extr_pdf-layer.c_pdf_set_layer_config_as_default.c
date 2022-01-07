
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int obj; scalar_t__ state; } ;
typedef TYPE_2__ pdf_ocg_entry ;
typedef int pdf_obj ;
struct TYPE_9__ {TYPE_1__* ocg; } ;
typedef TYPE_3__ pdf_document ;
typedef int fz_context ;
struct TYPE_7__ {int len; TYPE_2__* ocgs; } ;


 int AS ;
 int BaseState ;
 int Configs ;
 int Creator ;
 int D ;
 int Intent ;
 int Locked ;
 int Name ;
 int OFF ;
 int ON ;
 int Order ;
 int * PDF_NAME (int ) ;
 int RBGroups ;
 int View ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int pdf_array_push (int *,int *,int ) ;
 int pdf_dict_del (int *,int *,int *) ;
 int * pdf_dict_get (int *,int *,int *) ;
 int * pdf_dict_getp (int *,int ,char*) ;
 int pdf_dict_put (int *,int *,int *,int *) ;
 int * pdf_new_array (int *,TYPE_3__*,int) ;
 int pdf_trailer (int *,TYPE_3__*) ;

void
pdf_set_layer_config_as_default(fz_context *ctx, pdf_document *doc)
{
 pdf_obj *ocprops, *d, *order, *on, *configs, *rbgroups;
 int k;

 if (doc == ((void*)0) || doc->ocg == ((void*)0))
  return;

 ocprops = pdf_dict_getp(ctx, pdf_trailer(ctx, doc), "Root/OCProperties");
 if (!ocprops)
  return;


 d = pdf_dict_get(ctx, ocprops, PDF_NAME(D));
 if (d == ((void*)0))
  return;

 pdf_dict_put(ctx, d, PDF_NAME(BaseState), PDF_NAME(OFF));





 order = pdf_dict_get(ctx, d, PDF_NAME(Order));
 rbgroups = pdf_dict_get(ctx, d, PDF_NAME(RBGroups));
 configs = pdf_dict_get(ctx, ocprops, PDF_NAME(Configs));
 if (configs)
 {
  int len = pdf_array_len(ctx, configs);
  for (k=0; k < len; k++)
  {
   pdf_obj *config = pdf_array_get(ctx, configs, k);

   if (order && !pdf_dict_get(ctx, config, PDF_NAME(Order)))
    pdf_dict_put(ctx, config, PDF_NAME(Order), order);
   if (rbgroups && !pdf_dict_get(ctx, config, PDF_NAME(RBGroups)))
    pdf_dict_put(ctx, config, PDF_NAME(RBGroups), rbgroups);
  }
 }


 order = pdf_new_array(ctx, doc, 4);
 on = pdf_new_array(ctx, doc, 4);
 for (k = 0; k < doc->ocg->len; k++)
 {
  pdf_ocg_entry *s = &doc->ocg->ocgs[k];

  pdf_array_push(ctx, order, s->obj);
  if (s->state)
   pdf_array_push(ctx, on, s->obj);
 }
 pdf_dict_put(ctx, d, PDF_NAME(Order), order);
 pdf_dict_put(ctx, d, PDF_NAME(ON), on);
 pdf_dict_del(ctx, d, PDF_NAME(OFF));
 pdf_dict_del(ctx, d, PDF_NAME(AS));
 pdf_dict_put(ctx, d, PDF_NAME(Intent), PDF_NAME(View));
 pdf_dict_del(ctx, d, PDF_NAME(Name));
 pdf_dict_del(ctx, d, PDF_NAME(Creator));
 pdf_dict_del(ctx, d, PDF_NAME(RBGroups));
 pdf_dict_del(ctx, d, PDF_NAME(Locked));

 pdf_dict_del(ctx, ocprops, PDF_NAME(Configs));
}
