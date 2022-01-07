
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_page ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_cookie ;
typedef int fz_context ;


 int fz_run_page_annots (int *,int *,int *,int ,int *) ;
 int fz_run_page_contents (int *,int *,int *,int ,int *) ;
 int fz_run_page_widgets (int *,int *,int *,int ,int *) ;

void
fz_run_page(fz_context *ctx, fz_page *page, fz_device *dev, fz_matrix transform, fz_cookie *cookie)
{
 fz_run_page_contents(ctx, page, dev, transform, cookie);
 fz_run_page_annots(ctx, page, dev, transform, cookie);
 fz_run_page_widgets(ctx, page, dev, transform, cookie);
}
