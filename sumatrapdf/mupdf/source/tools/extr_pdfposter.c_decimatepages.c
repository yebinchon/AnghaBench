
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_9__ {float x1; float x0; float y1; float y0; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_context ;


 int ArtBox ;
 int BleedBox ;
 int Count ;
 int CropBox ;
 int Kids ;
 int MediaBox ;
 int PDF_NAME (int ) ;
 int Pages ;
 int Parent ;
 int Root ;
 int Rotate ;
 int TrimBox ;
 int Type ;
 TYPE_1__ fz_intersect_rect (TYPE_1__,TYPE_1__) ;
 scalar_t__ fz_is_empty_rect (TYPE_1__) ;
 TYPE_1__ fz_make_rect (int ,int ,int,int) ;
 int intersect_box (int *,int *,int *,int ,TYPE_1__) ;
 int * pdf_add_object (int *,int *,int *) ;
 int pdf_array_push_drop (int *,int *,int *) ;
 int pdf_array_push_real (int *,int *,float) ;
 int * pdf_copy_dict (int *,int *) ;
 int pdf_count_pages (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_inheritable (int *,int *,int ) ;
 int pdf_dict_put (int *,int *,int ,int *) ;
 int pdf_dict_put_drop (int *,int *,int ,int *) ;
 int pdf_dict_put_int (int *,int *,int ,int) ;
 int pdf_drop_obj (int *,int *) ;
 int pdf_flatten_inheritable_page_items (int *,int *) ;
 int * pdf_lookup_page_obj (int *,int *,int) ;
 int * pdf_new_array (int *,int *,int) ;
 int * pdf_new_dict (int *,int *,int) ;
 int pdf_to_int (int *,int ) ;
 int pdf_to_num (int *,int *) ;
 TYPE_1__ pdf_to_rect (int *,int ) ;
 int * pdf_trailer (int *,int *) ;
 int pdf_update_object (int *,int *,int ,int *) ;
 int x_factor ;
 int y_factor ;

__attribute__((used)) static void decimatepages(fz_context *ctx, pdf_document *doc)
{
 pdf_obj *oldroot, *root, *pages, *kids;
 int num_pages = pdf_count_pages(ctx, doc);
 int page, kidcount;
 fz_rect mediabox, cropbox;
 int rotate;

 oldroot = pdf_dict_get(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root));
 pages = pdf_dict_get(ctx, oldroot, PDF_NAME(Pages));

 root = pdf_new_dict(ctx, doc, 2);
 pdf_dict_put(ctx, root, PDF_NAME(Type), pdf_dict_get(ctx, oldroot, PDF_NAME(Type)));
 pdf_dict_put(ctx, root, PDF_NAME(Pages), pdf_dict_get(ctx, oldroot, PDF_NAME(Pages)));

 pdf_update_object(ctx, doc, pdf_to_num(ctx, oldroot), root);

 pdf_drop_obj(ctx, root);


 kids = pdf_new_array(ctx, doc, 1);

 kidcount = 0;
 for (page=0; page < num_pages; page++)
 {
  pdf_obj *page_obj = pdf_lookup_page_obj(ctx, doc, page);
  int xf = x_factor, yf = y_factor;
  float w, h;
  int x, y;

  rotate = pdf_to_int(ctx, pdf_dict_get_inheritable(ctx, page_obj, PDF_NAME(Rotate)));
  mediabox = pdf_to_rect(ctx, pdf_dict_get_inheritable(ctx, page_obj, PDF_NAME(MediaBox)));
  cropbox = pdf_to_rect(ctx, pdf_dict_get_inheritable(ctx, page_obj, PDF_NAME(CropBox)));
  if (fz_is_empty_rect(mediabox))
   mediabox = fz_make_rect(0, 0, 612, 792);
  if (!fz_is_empty_rect(cropbox))
   mediabox = fz_intersect_rect(mediabox, cropbox);

  w = mediabox.x1 - mediabox.x0;
  h = mediabox.y1 - mediabox.y0;

  if (rotate == 90 || rotate == 270)
  {
   xf = y_factor;
   yf = x_factor;
  }
  else
  {
   xf = x_factor;
   yf = y_factor;
  }

  if (xf == 0 && yf == 0)
  {

   if (w > h)
    xf = 2, yf = 1;
   else
    xf = 1, yf = 2;
  }
  else if (xf == 0)
   xf = 1;
  else if (yf == 0)
   yf = 1;

  for (y = yf-1; y >= 0; y--)
  {
   for (x = 0; x < xf; x++)
   {
    pdf_obj *newpageobj, *newpageref, *newmediabox;
    fz_rect mb;

    newpageobj = pdf_copy_dict(ctx, pdf_lookup_page_obj(ctx, doc, page));
    pdf_flatten_inheritable_page_items(ctx, newpageobj);
    newpageref = pdf_add_object(ctx, doc, newpageobj);

    newmediabox = pdf_new_array(ctx, doc, 4);

    mb.x0 = mediabox.x0 + (w/xf)*x;
    if (x == xf-1)
     mb.x1 = mediabox.x1;
    else
     mb.x1 = mediabox.x0 + (w/xf)*(x+1);
    mb.y0 = mediabox.y0 + (h/yf)*y;
    if (y == yf-1)
     mb.y1 = mediabox.y1;
    else
     mb.y1 = mediabox.y0 + (h/yf)*(y+1);

    pdf_array_push_real(ctx, newmediabox, mb.x0);
    pdf_array_push_real(ctx, newmediabox, mb.y0);
    pdf_array_push_real(ctx, newmediabox, mb.x1);
    pdf_array_push_real(ctx, newmediabox, mb.y1);

    pdf_dict_put(ctx, newpageobj, PDF_NAME(Parent), pages);
    pdf_dict_put_drop(ctx, newpageobj, PDF_NAME(MediaBox), newmediabox);

    intersect_box(ctx, doc, newpageobj, PDF_NAME(CropBox), mb);
    intersect_box(ctx, doc, newpageobj, PDF_NAME(BleedBox), mb);
    intersect_box(ctx, doc, newpageobj, PDF_NAME(TrimBox), mb);
    intersect_box(ctx, doc, newpageobj, PDF_NAME(ArtBox), mb);


    pdf_drop_obj(ctx, newpageobj);
    pdf_array_push_drop(ctx, kids, newpageref);

    kidcount++;
   }
  }
 }


 pdf_dict_put_int(ctx, pages, PDF_NAME(Count), kidcount);
 pdf_dict_put_drop(ctx, pages, PDF_NAME(Kids), kids);
}
