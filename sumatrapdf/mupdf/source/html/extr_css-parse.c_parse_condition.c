
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lexbuf {char lookahead; char* string; int pool; int ctx; } ;
struct TYPE_4__ {char type; void* val; } ;
typedef TYPE_1__ fz_css_condition ;


 scalar_t__ CSS_HASH ;
 char CSS_KEYWORD ;
 scalar_t__ accept (struct lexbuf*,char) ;
 int expect (struct lexbuf*,char) ;
 int fz_css_error (struct lexbuf*,char*) ;
 TYPE_1__* fz_new_css_condition (int ,int ,char,char*,char*) ;
 int next (struct lexbuf*) ;
 void* parse_attrib_value (struct lexbuf*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_condition *parse_condition(struct lexbuf *buf)
{
 fz_css_condition *c;

 if (accept(buf, ':'))
 {
  accept(buf, ':');
  if (buf->lookahead != CSS_KEYWORD)
   fz_css_error(buf, "expected keyword after ':'");
  c = fz_new_css_condition(buf->ctx, buf->pool, ':', "pseudo", buf->string);
  next(buf);
  if (accept(buf, '('))
  {
   white(buf);
   if (accept(buf, CSS_KEYWORD))
    white(buf);
   expect(buf, ')');
  }
  return c;
 }

 if (accept(buf, '.'))
 {
  if (buf->lookahead != CSS_KEYWORD)
   fz_css_error(buf, "expected keyword after '.'");
  c = fz_new_css_condition(buf->ctx, buf->pool, '.', "class", buf->string);
  next(buf);
  return c;
 }

 if (accept(buf, '['))
 {
  white(buf);

  if (buf->lookahead != CSS_KEYWORD)
   fz_css_error(buf, "expected keyword after '['");
  c = fz_new_css_condition(buf->ctx, buf->pool, '[', buf->string, ((void*)0));
  next(buf);

  white(buf);

  if (accept(buf, '='))
  {
   c->type = '=';
   c->val = parse_attrib_value(buf);
  }
  else if (accept(buf, '|'))
  {
   expect(buf, '=');
   c->type = '|';
   c->val = parse_attrib_value(buf);
  }
  else if (accept(buf, '~'))
  {
   expect(buf, '=');
   c->type = '~';
   c->val = parse_attrib_value(buf);
  }

  expect(buf, ']');

  return c;
 }

 if (buf->lookahead == CSS_HASH)
 {
  c = fz_new_css_condition(buf->ctx, buf->pool, '#', "id", buf->string);
  next(buf);
  return c;
 }

 fz_css_error(buf, "expected condition");
}
