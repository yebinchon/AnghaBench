
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_irect ;
typedef int fz_document ;


 int ctx ;
 int fz_bound_page (int ,int ) ;
 int fz_round_rect (int ) ;
 int fz_scale (float,float) ;
 int fz_transform_rect (int ,int ) ;
 int lastPage ;
 int loadPage (int *,int) ;

__attribute__((used)) static fz_irect pageBounds(fz_document *doc, int number, float dpi)
{
 loadPage(doc, number);
 return fz_round_rect(fz_transform_rect(fz_bound_page(ctx, lastPage), fz_scale(dpi/72, dpi/72)));
}
