
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int outline; int set; int html; int zip; } ;
typedef TYPE_1__ html_document ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_drop_archive (int *,int ) ;
 int fz_drop_html (int *,int ) ;
 int fz_drop_html_font_set (int *,int ) ;
 int fz_drop_outline (int *,int ) ;

__attribute__((used)) static void
htdoc_drop_document(fz_context *ctx, fz_document *doc_)
{
 html_document *doc = (html_document*)doc_;
 fz_drop_archive(ctx, doc->zip);
 fz_drop_html(ctx, doc->html);
 fz_drop_html_font_set(ctx, doc->set);
 fz_drop_outline(ctx, doc->outline);
}
