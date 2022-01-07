
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int A ;
 int Dest ;
 int Next ;
 int PDF_NAME (int ) ;
 int Prev ;
 int dest_is_valid (int *,int *,int,int*,int *) ;
 int pdf_dict_del (int *,int *,int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_put (int *,int *,int ,int *) ;
 int strip_outlines (int *,int *,int *,int,int*,int *) ;

__attribute__((used)) static int strip_outline(fz_context *ctx, pdf_document *doc, pdf_obj *outlines, int page_count, int *page_object_nums, pdf_obj *names_list, pdf_obj **pfirst, pdf_obj **plast)
{
 pdf_obj *prev = ((void*)0);
 pdf_obj *first = ((void*)0);
 pdf_obj *current;
 int count = 0;

 for (current = outlines; current != ((void*)0); )
 {
  int nc;



  nc = strip_outlines(ctx, doc, current, page_count, page_object_nums, names_list);

  if (!dest_is_valid(ctx, current, page_count, page_object_nums, names_list))
  {
   if (nc == 0)
   {


    pdf_obj *next = pdf_dict_get(ctx, current, PDF_NAME(Next));
    if (next == ((void*)0))
    {

     if (prev != ((void*)0))
      pdf_dict_del(ctx, prev, PDF_NAME(Next));
    }
    else if (prev != ((void*)0))
    {
     pdf_dict_put(ctx, prev, PDF_NAME(Next), next);
     pdf_dict_put(ctx, next, PDF_NAME(Prev), prev);
    }
    else
    {
     pdf_dict_del(ctx, next, PDF_NAME(Prev));
    }
    current = next;
   }
   else
   {

    pdf_dict_del(ctx, current, PDF_NAME(Dest));
    pdf_dict_del(ctx, current, PDF_NAME(A));
    current = pdf_dict_get(ctx, current, PDF_NAME(Next));
   }
  }
  else
  {

   if (first == ((void*)0))
    first = current;
   prev = current;
   current = pdf_dict_get(ctx, current, PDF_NAME(Next));
   count++;
  }
 }

 *pfirst = first;
 *plast = prev;

 return count;
}
