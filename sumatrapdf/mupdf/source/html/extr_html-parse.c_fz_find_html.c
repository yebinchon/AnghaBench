
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refs; int chapter_num; void* doc; } ;
typedef TYPE_1__ fz_html_key ;
typedef int fz_html ;
typedef int fz_context ;


 int fz_drop_html_imp ;
 int * fz_find_item (int *,int *,TYPE_1__*,int *) ;
 int fz_html_store_type ;

fz_html *fz_find_html(fz_context *ctx, void *doc, int chapter)
{
 fz_html_key key;

 key.refs = 1;
 key.doc = doc;
 key.chapter_num = chapter;
 return fz_find_item(ctx, &fz_drop_html_imp, &key, &fz_html_store_type);
}
