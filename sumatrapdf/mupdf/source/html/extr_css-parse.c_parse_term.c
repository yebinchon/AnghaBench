
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct lexbuf {char lookahead; int string; int pool; int ctx; } ;
struct TYPE_5__ {char* data; char type; int args; } ;
typedef TYPE_1__ fz_css_value ;



 int CSS_KEYWORD ;





 scalar_t__ accept (struct lexbuf*,char) ;
 int expect (struct lexbuf*,char) ;
 int fz_css_error (struct lexbuf*,char*) ;
 TYPE_1__* fz_new_css_value (int ,int ,int,int ) ;
 TYPE_1__* fz_new_css_value_x (int ,int ,int) ;
 char* fz_pool_alloc (int ,int ,scalar_t__) ;
 int next (struct lexbuf*) ;
 int parse_expr (struct lexbuf*) ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_value *parse_term(struct lexbuf *buf)
{
 fz_css_value *v;

 if (buf->lookahead == '+' || buf->lookahead == '-')
 {
  float sign = buf->lookahead == '-' ? -1 : 1;
  next(buf);
  if (buf->lookahead != 131 && buf->lookahead != 132 && buf->lookahead != 130)
   fz_css_error(buf, "expected number");
  if (sign < 0)
  {
   v = fz_new_css_value_x(buf->ctx, buf->pool, buf->lookahead);
   v->data = fz_pool_alloc(buf->ctx, buf->pool, strlen(buf->string) + 2);
   v->data[0] = '-';
   strcpy(v->data + 1, buf->string);
  }
  else
  {
   v = fz_new_css_value(buf->ctx, buf->pool, buf->lookahead, buf->string);
  }
  next(buf);
  white(buf);
  return v;
 }

 if (buf->lookahead == CSS_KEYWORD)
 {
  v = fz_new_css_value(buf->ctx, buf->pool, CSS_KEYWORD, buf->string);
  next(buf);
  if (accept(buf, '('))
  {
   white(buf);
   v->type = '(';
   v->args = parse_expr(buf);
   expect(buf, ')');
  }
  white(buf);
  return v;
 }

 switch (buf->lookahead)
 {
 case 133:
 case 129:
 case 128:
 case 131:
 case 132:
 case 130:
  v = fz_new_css_value(buf->ctx, buf->pool, buf->lookahead, buf->string);
  next(buf);
  white(buf);
  return v;
 }

 fz_css_error(buf, "expected value");
}
