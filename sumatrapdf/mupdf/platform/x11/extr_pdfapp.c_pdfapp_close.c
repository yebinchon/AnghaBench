
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; int stream; int * doc; int * page; int * outline; int * old_image; int * new_image; int * image; int * docpath; int * doctitle; int * page_links; int * page_text; int * seps; int * annotations_list; int * page_list; } ;
typedef TYPE_1__ pdfapp_t ;


 int fz_drop_display_list (int ,int *) ;
 int fz_drop_document (int ,int *) ;
 int fz_drop_link (int ,int *) ;
 int fz_drop_outline (int ,int *) ;
 int fz_drop_page (int ,int *) ;
 int fz_drop_pixmap (int ,int *) ;
 int fz_drop_separations (int ,int *) ;
 int fz_drop_stext_page (int ,int *) ;
 int fz_drop_stream (int ,int ) ;
 int fz_flush_warnings (int ) ;
 int fz_free (int ,int *) ;

void pdfapp_close(pdfapp_t *app)
{
 fz_drop_display_list(app->ctx, app->page_list);
 app->page_list = ((void*)0);

 fz_drop_display_list(app->ctx, app->annotations_list);
 app->annotations_list = ((void*)0);

 fz_drop_separations(app->ctx, app->seps);
 app->seps = ((void*)0);

 fz_drop_stext_page(app->ctx, app->page_text);
 app->page_text = ((void*)0);

 fz_drop_link(app->ctx, app->page_links);
 app->page_links = ((void*)0);

 fz_free(app->ctx, app->doctitle);
 app->doctitle = ((void*)0);

 fz_free(app->ctx, app->docpath);
 app->docpath = ((void*)0);

 fz_drop_pixmap(app->ctx, app->image);
 app->image = ((void*)0);

 fz_drop_pixmap(app->ctx, app->new_image);
 app->new_image = ((void*)0);

 fz_drop_pixmap(app->ctx, app->old_image);
 app->old_image = ((void*)0);

 fz_drop_outline(app->ctx, app->outline);
 app->outline = ((void*)0);

 fz_drop_page(app->ctx, app->page);
 app->page = ((void*)0);

 fz_drop_document(app->ctx, app->doc);
 app->doc = ((void*)0);





 fz_flush_warnings(app->ctx);
}
