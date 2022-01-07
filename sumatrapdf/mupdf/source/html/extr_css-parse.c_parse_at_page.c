
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int pool; int ctx; } ;
typedef int fz_css_selector ;
typedef int fz_css_rule ;
typedef int fz_css_property ;


 char CSS_KEYWORD ;
 scalar_t__ accept (struct lexbuf*,char) ;
 int expect (struct lexbuf*,char) ;
 int * fz_new_css_rule (int ,int ,int *,int *) ;
 int * fz_new_css_selector (int ,int ,char*) ;
 int * parse_declaration_list (struct lexbuf*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_rule *parse_at_page(struct lexbuf *buf)
{
 fz_css_selector *s = ((void*)0);
 fz_css_property *p = ((void*)0);

 white(buf);
 if (accept(buf, ':'))
 {
  expect(buf, CSS_KEYWORD);
  white(buf);
 }
 expect(buf, '{');
 p = parse_declaration_list(buf);
 expect(buf, '}');
 white(buf);

 s = fz_new_css_selector(buf->ctx, buf->pool, "@page");
 return fz_new_css_rule(buf->ctx, buf->pool, s, p);
}
