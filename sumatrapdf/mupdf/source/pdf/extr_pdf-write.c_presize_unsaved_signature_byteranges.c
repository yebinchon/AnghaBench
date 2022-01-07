
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* unsaved_sigs; } ;
typedef TYPE_1__ pdf_xref ;
struct TYPE_6__ {int field; struct TYPE_6__* next; } ;
typedef TYPE_2__ pdf_unsaved_sig ;
typedef int pdf_obj ;
struct TYPE_7__ {int num_incremental_sections; TYPE_1__* xref_sections; } ;
typedef TYPE_3__ pdf_document ;
typedef int fz_context ;


 int ByteRange ;
 int INT_MAX ;
 int PDF_NAME (int ) ;
 int V ;
 int pdf_array_push_int (int *,int *,int ) ;
 int * pdf_dict_getl (int *,int ,int ,int ,int *) ;

__attribute__((used)) static void presize_unsaved_signature_byteranges(fz_context *ctx, pdf_document *doc)
{
 int s;

 for (s = 0; s < doc->num_incremental_sections; s++)
 {
  pdf_xref *xref = &doc->xref_sections[s];

  if (xref->unsaved_sigs)
  {



   pdf_unsaved_sig *usig;
   int n = 0;

   for (usig = xref->unsaved_sigs; usig; usig = usig->next)
    n++;

   for (usig = xref->unsaved_sigs; usig; usig = usig->next)
   {



    int i;
    pdf_obj *byte_range = pdf_dict_getl(ctx, usig->field, PDF_NAME(V), PDF_NAME(ByteRange), ((void*)0));

    for (i = 0; i < n+1; i++)
    {
     pdf_array_push_int(ctx, byte_range, INT_MAX);
     pdf_array_push_int(ctx, byte_range, INT_MAX);
    }
   }
  }
 }
}
