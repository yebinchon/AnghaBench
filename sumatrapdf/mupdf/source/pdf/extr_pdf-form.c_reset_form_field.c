
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int dirty; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int AS ;
 int DV ;
 int Kids ;
 int Off ;
 int * PDF_NAME (int ) ;




 int V ;
 int pdf_dict_del (int *,int *,int *) ;
 int * pdf_dict_get (int *,int *,int *) ;
 int * pdf_dict_get_inheritable (int *,int *,int *) ;
 int pdf_dict_put (int *,int *,int *,int *) ;
 scalar_t__ pdf_field_dirties_document (int *,TYPE_1__*,int *) ;
 int pdf_field_mark_dirty (int *,int *) ;
 int pdf_field_type (int *,int *) ;

__attribute__((used)) static void reset_form_field(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{







 pdf_obj *dv = pdf_dict_get(ctx, field, PDF_NAME(DV));
 pdf_obj *kids = pdf_dict_get(ctx, field, PDF_NAME(Kids));

 if (dv)
  pdf_dict_put(ctx, field, PDF_NAME(V), dv);
 else
  pdf_dict_del(ctx, field, PDF_NAME(V));

 if (kids == ((void*)0))
 {




  switch (pdf_field_type(ctx, field))
  {
  case 130:
  case 129:
   {
    pdf_obj *leafv = pdf_dict_get_inheritable(ctx, field, PDF_NAME(V));
    if (!leafv)
     leafv = PDF_NAME(Off);
    pdf_dict_put(ctx, field, PDF_NAME(AS), leafv);
   }
   pdf_field_mark_dirty(ctx, field);
   break;

  case 131:
  case 128:

   break;

  default:
   pdf_field_mark_dirty(ctx, field);
   break;
  }
 }

 if (pdf_field_dirties_document(ctx, doc, field))
  doc->dirty = 1;
}
