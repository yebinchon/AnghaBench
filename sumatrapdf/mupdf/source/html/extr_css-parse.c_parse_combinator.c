
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct lexbuf {int pool; int ctx; } ;
struct TYPE_6__ {int combine; struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef TYPE_1__ fz_css_selector ;


 TYPE_1__* fz_new_css_selector (int ,int ,int *) ;
 TYPE_1__* parse_simple_selector (struct lexbuf*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_selector *parse_combinator(struct lexbuf *buf, int c, fz_css_selector *a)
{
 fz_css_selector *sel, *b;
 white(buf);
 b = parse_simple_selector(buf);
 sel = fz_new_css_selector(buf->ctx, buf->pool, ((void*)0));
 sel->combine = c;
 sel->left = a;
 sel->right = b;
 return sel;
}
