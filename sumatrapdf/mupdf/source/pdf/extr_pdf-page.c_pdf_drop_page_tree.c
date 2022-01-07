
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rev_page_count; int * rev_page_map; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int fz_free (int *,int *) ;

void
pdf_drop_page_tree(fz_context *ctx, pdf_document *doc)
{
 fz_free(ctx, doc->rev_page_map);
 doc->rev_page_map = ((void*)0);
 doc->rev_page_count = 0;
}
