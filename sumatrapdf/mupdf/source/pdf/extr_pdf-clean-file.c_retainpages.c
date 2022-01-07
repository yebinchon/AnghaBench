
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_3__ {int * doc; } ;
typedef TYPE_1__ globals ;
typedef int fz_context ;


 int Annots ;
 int Count ;
 int D ;
 int Dests ;
 int Kids ;
 int Link ;
 int Names ;
 int OCProperties ;
 int Outlines ;
 int PDF_NAME (int ) ;
 int Pages ;
 int Root ;
 int Subtype ;
 int Type ;
 int dest_is_valid (int *,int *,int,int*,int *) ;
 scalar_t__ dest_is_valid_page (int *,int *,int*,int) ;
 int* fz_calloc (int *,int,int) ;
 int fz_free (int *,int*) ;
 char* fz_parse_page_range (int *,char const*,int*,int*,int) ;
 int pdf_array_delete (int *,int *,int) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int pdf_array_push (int *,int *,int *) ;
 int pdf_array_push_drop (int *,int *,int *) ;
 int pdf_count_pages (int *,int *) ;
 int pdf_dict_del (int *,int *,int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int * pdf_dict_get_key (int *,int *,int) ;
 int * pdf_dict_get_val (int *,int *,int) ;
 int pdf_dict_len (int *,int *) ;
 int pdf_dict_put (int *,int *,int ,int *) ;
 int pdf_dict_put_drop (int *,int *,int ,int *) ;
 int pdf_drop_obj (int *,int *) ;
 int * pdf_load_name_tree (int *,int *,int ) ;
 int * pdf_lookup_page_obj (int *,int *,int) ;
 int pdf_name_eq (int *,int *,int ) ;
 int * pdf_new_array (int *,int *,int) ;
 int * pdf_new_dict (int *,int *,int) ;
 int * pdf_new_int (int *,int) ;
 int * pdf_new_string (int *,int ,int ) ;
 int pdf_to_name (int *,int *) ;
 int pdf_to_num (int *,int *) ;
 int * pdf_trailer (int *,int *) ;
 int pdf_update_object (int *,int *,int,int *) ;
 int retainpage (int *,int *,int *,int *,int) ;
 scalar_t__ strip_outlines (int *,int *,int *,int,int*,int *) ;
 int strlen (int ) ;

__attribute__((used)) static void retainpages(fz_context *ctx, globals *glo, int argc, char **argv)
{
 pdf_obj *oldroot, *root, *pages, *kids, *countobj, *olddests;
 pdf_document *doc = glo->doc;
 int argidx = 0;
 pdf_obj *names_list = ((void*)0);
 pdf_obj *outlines;
 pdf_obj *ocproperties;
 int pagecount;
 int i;
 int *page_object_nums;



 oldroot = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root));
 pages = pdf_dict_get(ctx, oldroot, PDF_NAME(Pages));
 olddests = pdf_load_name_tree(ctx, doc, PDF_NAME(Dests));
 outlines = pdf_dict_get(ctx, oldroot, PDF_NAME(Outlines));
 ocproperties = pdf_dict_get(ctx, oldroot, PDF_NAME(OCProperties));

 root = pdf_new_dict(ctx, doc, 3);
 pdf_dict_put(ctx, root, PDF_NAME(Type), pdf_dict_get(ctx, oldroot, PDF_NAME(Type)));
 pdf_dict_put(ctx, root, PDF_NAME(Pages), pdf_dict_get(ctx, oldroot, PDF_NAME(Pages)));
 if (outlines)
  pdf_dict_put(ctx, root, PDF_NAME(Outlines), outlines);
 if (ocproperties)
  pdf_dict_put(ctx, root, PDF_NAME(OCProperties), ocproperties);

 pdf_update_object(ctx, doc, pdf_to_num(ctx, oldroot), root);


 kids = pdf_new_array(ctx, doc, 1);


 while (argc - argidx)
 {
  int page, spage, epage;
  const char *pagelist = argv[argidx];

  pagecount = pdf_count_pages(ctx, doc);

  while ((pagelist = fz_parse_page_range(ctx, pagelist, &spage, &epage, pagecount)))
  {
   if (spage < epage)
    for (page = spage; page <= epage; ++page)
     retainpage(ctx, doc, pages, kids, page);
   else
    for (page = spage; page >= epage; --page)
     retainpage(ctx, doc, pages, kids, page);
  }

  argidx++;
 }


 countobj = pdf_new_int(ctx, pdf_array_len(ctx, kids));
 pdf_dict_put_drop(ctx, pages, PDF_NAME(Count), countobj);
 pdf_dict_put_drop(ctx, pages, PDF_NAME(Kids), kids);

 pagecount = pdf_count_pages(ctx, doc);
 page_object_nums = fz_calloc(ctx, pagecount, sizeof(*page_object_nums));
 for (i = 0; i < pagecount; i++)
 {
  pdf_obj *pageref = pdf_lookup_page_obj(ctx, doc, i);
  page_object_nums[i] = pdf_to_num(ctx, pageref);
 }





 if (olddests)
 {
  pdf_obj *names = pdf_new_dict(ctx, doc, 1);
  pdf_obj *dests = pdf_new_dict(ctx, doc, 1);
  int len = pdf_dict_len(ctx, olddests);

  names_list = pdf_new_array(ctx, doc, 32);

  for (i = 0; i < len; i++)
  {
   pdf_obj *key = pdf_dict_get_key(ctx, olddests, i);
   pdf_obj *val = pdf_dict_get_val(ctx, olddests, i);
   pdf_obj *dest = pdf_dict_get(ctx, val, PDF_NAME(D));

   dest = pdf_array_get(ctx, dest ? dest : val, 0);
   if (dest_is_valid_page(ctx, dest, page_object_nums, pagecount))
   {
    pdf_obj *key_str = pdf_new_string(ctx, pdf_to_name(ctx, key), strlen(pdf_to_name(ctx, key)));
    pdf_array_push_drop(ctx, names_list, key_str);
    pdf_array_push(ctx, names_list, val);
   }
  }

  pdf_dict_put(ctx, dests, PDF_NAME(Names), names_list);
  pdf_dict_put(ctx, names, PDF_NAME(Dests), dests);
  pdf_dict_put(ctx, root, PDF_NAME(Names), names);

  pdf_drop_obj(ctx, names);
  pdf_drop_obj(ctx, dests);
  pdf_drop_obj(ctx, olddests);
 }


 for (i = 0; i < pagecount; i++)
 {
  pdf_obj *pageref = pdf_lookup_page_obj(ctx, doc, i);

  pdf_obj *annots = pdf_dict_get(ctx, pageref, PDF_NAME(Annots));

  int len = pdf_array_len(ctx, annots);
  int j;

  for (j = 0; j < len; j++)
  {
   pdf_obj *o = pdf_array_get(ctx, annots, j);

   if (!pdf_name_eq(ctx, pdf_dict_get(ctx, o, PDF_NAME(Subtype)), PDF_NAME(Link)))
    continue;

   if (!dest_is_valid(ctx, o, pagecount, page_object_nums, names_list))
   {

    pdf_array_delete(ctx, annots, j);
    len--;
    j--;
   }
  }
 }

 if (strip_outlines(ctx, doc, outlines, pagecount, page_object_nums, names_list) == 0)
 {
  pdf_dict_del(ctx, root, PDF_NAME(Outlines));
 }

 fz_free(ctx, page_object_nums);
 pdf_drop_obj(ctx, names_list);
 pdf_drop_obj(ctx, root);
}
