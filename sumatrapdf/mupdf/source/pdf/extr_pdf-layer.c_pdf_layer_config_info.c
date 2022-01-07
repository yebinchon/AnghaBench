
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_8__ {int * name; int * creator; } ;
typedef TYPE_2__ pdf_layer_config ;
struct TYPE_9__ {TYPE_1__* ocg; } ;
typedef TYPE_3__ pdf_document ;
typedef int fz_context ;
struct TYPE_7__ {int num_configs; } ;


 int Configs ;
 int Creator ;
 int D ;
 int FZ_ERROR_GENERIC ;
 int Name ;
 int PDF_NAME (int ) ;
 int fz_throw (int *,int ,char*) ;
 int * pdf_array_get (int *,int *,int) ;
 int * pdf_dict_get (int *,int *,int ) ;
 void* pdf_dict_get_string (int *,int *,int ,int *) ;
 int * pdf_dict_getp (int *,int ,char*) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 int pdf_trailer (int *,TYPE_3__*) ;

void
pdf_layer_config_info(fz_context *ctx, pdf_document *doc, int config_num, pdf_layer_config *info)
{
 pdf_obj *ocprops;
 pdf_obj *obj;

 if (!info)
  return;

 info->name = ((void*)0);
 info->creator = ((void*)0);

 if (doc == ((void*)0) || doc->ocg == ((void*)0))
  return;
 if (config_num < 0 || config_num >= doc->ocg->num_configs)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Invalid layer config number");

 ocprops = pdf_dict_getp(ctx, pdf_trailer(ctx, doc), "Root/OCProperties");
 if (!ocprops)
  return;

 obj = pdf_dict_get(ctx, ocprops, PDF_NAME(Configs));
 if (pdf_is_array(ctx, obj))
  obj = pdf_array_get(ctx, obj, config_num);
 else if (config_num == 0)
  obj = pdf_dict_get(ctx, ocprops, PDF_NAME(D));
 else
  fz_throw(ctx, FZ_ERROR_GENERIC, "Invalid layer config number");

 info->creator = pdf_dict_get_string(ctx, obj, PDF_NAME(Creator), ((void*)0));
 info->name = pdf_dict_get_string(ctx, obj, PDF_NAME(Name), ((void*)0));
}
