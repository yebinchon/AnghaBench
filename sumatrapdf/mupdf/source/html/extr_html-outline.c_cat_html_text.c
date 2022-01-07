
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct outline_parser {scalar_t__ cat; } ;
struct TYPE_3__ {int down; int flow_head; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 int cat_html_box (int *,scalar_t__,int ) ;
 int cat_html_flow (int *,scalar_t__,int ) ;
 int fz_clear_buffer (int *,scalar_t__) ;
 scalar_t__ fz_new_buffer (int *,int) ;
 char const* fz_string_from_buffer (int *,scalar_t__) ;

__attribute__((used)) static const char *
cat_html_text(fz_context *ctx, struct outline_parser *x, fz_html_box *box)
{
 if (!x->cat)
  x->cat = fz_new_buffer(ctx, 1024);
 else
  fz_clear_buffer(ctx, x->cat);

 cat_html_flow(ctx, x->cat, box->flow_head);
 cat_html_box(ctx, x->cat, box->down);

 return fz_string_from_buffer(ctx, x->cat);
}
