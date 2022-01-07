
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;
struct TYPE_2__ {char type; } ;


 int pdf_drop_obj (int *,int *) ;
 TYPE_1__* pdf_get_xref_entry (int *,int *,int) ;
 int * pdf_load_object (int *,int *,int) ;
 int pdf_xref_len (int *,int *) ;

__attribute__((used)) static void preloadobjstms(fz_context *ctx, pdf_document *doc)
{
 pdf_obj *obj;
 int num;


 for (num = 0; num < pdf_xref_len(ctx, doc); num++)
 {
  if (pdf_get_xref_entry(ctx, doc, num)->type == 'o')
  {
   obj = pdf_load_object(ctx, doc, num);
   pdf_drop_obj(ctx, obj);
  }
 }
}
