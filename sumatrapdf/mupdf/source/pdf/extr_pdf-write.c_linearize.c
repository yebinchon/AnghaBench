
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* use_list; int start; int* renumber_map; int* rev_renumber_map; int page_object_lists; } ;
typedef TYPE_1__ pdf_write_state ;
typedef int pdf_document ;
typedef int fz_context ;


 int USE_PARAMS ;
 int add_linearization_objs (int *,int *,TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int* fz_calloc (int *,int,int) ;
 int fz_free (int *,int*) ;
 int heap_sort (int*,int,int*,int *) ;
 int mark_trailer (int *,int *,TYPE_1__*,int ) ;
 int memset (int*,int ,int) ;
 int order_ge ;
 int page_objects_list_create (int *) ;
 int page_objects_list_renumber (TYPE_1__*) ;
 int page_objects_list_sort_and_dedupe (int *,int ) ;
 int pdf_localise_page_resources (int *,int *) ;
 int pdf_trailer (int *,int *) ;
 int pdf_xref_len (int *,int *) ;
 int renumberobjs (int *,int *,TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static void
linearize(fz_context *ctx, pdf_document *doc, pdf_write_state *opts)
{
 int i;
 int n = pdf_xref_len(ctx, doc) + 2;
 int *reorder;
 int *rev_renumber_map;

 opts->page_object_lists = page_objects_list_create(ctx);





 pdf_localise_page_resources(ctx, doc);


 memset(opts->use_list, 0, n * sizeof(int));
 mark_trailer(ctx, doc, opts, pdf_trailer(ctx, doc));


 add_linearization_objs(ctx, doc, opts);
 reorder = fz_calloc(ctx, n, sizeof(int));
 rev_renumber_map = fz_calloc(ctx, n, sizeof(int));
 for (i = 0; i < n; i++)
 {
  reorder[i] = i;
 }


 heap_sort(reorder+1, n-1, opts->use_list, &order_ge);
 for (i = 1; (opts->use_list[reorder[i]] & USE_PARAMS) == 0; i++) {}
 opts->start = i;


 for (i = 0; i < n; i++)
 {
  opts->renumber_map[reorder[i]] = i;
  rev_renumber_map[i] = opts->rev_renumber_map[reorder[i]];
 }
 fz_free(ctx, opts->rev_renumber_map);
 opts->rev_renumber_map = rev_renumber_map;
 fz_free(ctx, reorder);


 page_objects_list_renumber(opts);
 renumberobjs(ctx, doc, opts);

 page_objects_list_sort_and_dedupe(ctx, opts->page_object_lists);
}
