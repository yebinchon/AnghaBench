
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_page ;
typedef int fz_page_bound_page_fn ;
struct TYPE_3__ {int * bound_page; } ;
typedef TYPE_1__ fz_page ;
typedef int fz_context ;


 scalar_t__ pdf_bound_page ;

pdf_page *pdf_page_from_fz_page(fz_context *ctx, fz_page *ptr)
{
 return (pdf_page *)((ptr && ptr->bound_page == (fz_page_bound_page_fn*)pdf_bound_page) ? ptr : ((void*)0));
}
