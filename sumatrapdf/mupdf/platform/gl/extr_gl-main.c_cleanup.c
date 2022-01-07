
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int doc ;
 scalar_t__ fz_atoi (int ) ;
 int fz_debug_store (int ) ;
 int fz_drop_context (int ) ;
 int fz_drop_document (int ,int ) ;
 int fz_drop_link (int ,int ) ;
 int fz_drop_outline (int ,int ) ;
 int fz_drop_page (int ,int ) ;
 int fz_drop_separations (int ,int ) ;
 int fz_drop_stext_page (int ,int ) ;
 int fzpage ;
 int getenv (char*) ;
 int links ;
 int outline ;
 int page_text ;
 int save_accelerator () ;
 int save_history () ;
 int seps ;
 int ui_finish () ;

__attribute__((used)) static void cleanup(void)
{
 save_history();
 save_accelerator();

 ui_finish();


 if (fz_atoi(getenv("FZ_DEBUG_STORE")))
  fz_debug_store(ctx);


 fz_drop_stext_page(ctx, page_text);
 fz_drop_separations(ctx, seps);
 fz_drop_link(ctx, links);
 fz_drop_page(ctx, fzpage);
 fz_drop_outline(ctx, outline);
 fz_drop_document(ctx, doc);
 fz_drop_context(ctx);
}
