
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int outline; int html; } ;
typedef TYPE_1__ html_document ;
typedef int fz_document ;
typedef int fz_context ;


 int fz_layout_html (int *,int ,float,float,float) ;
 int htdoc_update_outline (int *,int *,int ) ;

__attribute__((used)) static void
htdoc_layout(fz_context *ctx, fz_document *doc_, float w, float h, float em)
{
 html_document *doc = (html_document*)doc_;

 fz_layout_html(ctx, doc->html, w, h, em);

 htdoc_update_outline(ctx, doc_, doc->outline);
}
