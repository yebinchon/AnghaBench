
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bookmark ;


 int ctx ;
 int currentpage ;
 int doc ;
 scalar_t__ future_count ;
 scalar_t__ fz_is_document_reflowable (int ,int ) ;
 int fz_layout_document (int ,int ,int ,int ,int) ;
 int fz_lookup_bookmark (int ,int ,int ) ;
 int fz_make_bookmark (int ,int ,int ) ;
 scalar_t__ history_count ;
 int layout_em ;
 int layout_h ;
 int layout_w ;
 int load_page () ;
 int render_page () ;
 int update_title () ;

__attribute__((used)) static void relayout(void)
{
 if (layout_em < 6) layout_em = 6;
 if (layout_em > 36) layout_em = 36;
 if (fz_is_document_reflowable(ctx, doc))
 {
  fz_bookmark mark = fz_make_bookmark(ctx, doc, currentpage);
  fz_layout_document(ctx, doc, layout_w, layout_h, layout_em);
  currentpage = fz_lookup_bookmark(ctx, doc, mark);
  history_count = 0;
  future_count = 0;

  load_page();
  render_page();
  update_title();
 }
}
