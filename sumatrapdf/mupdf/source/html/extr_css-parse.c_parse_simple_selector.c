
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lexbuf {scalar_t__ lookahead; int pool; int ctx; int * string; } ;
struct TYPE_4__ {void* cond; } ;
typedef TYPE_1__ fz_css_selector ;


 scalar_t__ CSS_KEYWORD ;
 scalar_t__ accept (struct lexbuf*,char) ;
 int fz_css_error (struct lexbuf*,char*) ;
 TYPE_1__* fz_new_css_selector (int ,int ,int *) ;
 scalar_t__ iscond (scalar_t__) ;
 int next (struct lexbuf*) ;
 void* parse_condition_list (struct lexbuf*) ;

__attribute__((used)) static fz_css_selector *parse_simple_selector(struct lexbuf *buf)
{
 fz_css_selector *s;

 if (accept(buf, '*'))
 {
  s = fz_new_css_selector(buf->ctx, buf->pool, ((void*)0));
  if (iscond(buf->lookahead))
   s->cond = parse_condition_list(buf);
  return s;
 }
 else if (buf->lookahead == CSS_KEYWORD)
 {
  s = fz_new_css_selector(buf->ctx, buf->pool, buf->string);
  next(buf);
  if (iscond(buf->lookahead))
   s->cond = parse_condition_list(buf);
  return s;
 }
 else if (iscond(buf->lookahead))
 {
  s = fz_new_css_selector(buf->ctx, buf->pool, ((void*)0));
  s->cond = parse_condition_list(buf);
  return s;
 }

 fz_css_error(buf, "expected selector");
}
