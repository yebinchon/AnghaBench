
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lexbuf {scalar_t__ lookahead; int string; int pool; int ctx; } ;
struct TYPE_4__ {int important; int value; } ;
typedef TYPE_1__ fz_css_property ;


 scalar_t__ CSS_KEYWORD ;
 scalar_t__ accept (struct lexbuf*,char) ;
 int expect (struct lexbuf*,char) ;
 int fz_css_error (struct lexbuf*,char*) ;
 TYPE_1__* fz_new_css_property (int ,int ,int ,int *,int ) ;
 int next (struct lexbuf*) ;
 int parse_expr (struct lexbuf*) ;
 scalar_t__ strcmp (int ,char*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_property *parse_declaration(struct lexbuf *buf)
{
 fz_css_property *p;

 if (buf->lookahead != CSS_KEYWORD)
  fz_css_error(buf, "expected keyword in property");
 p = fz_new_css_property(buf->ctx, buf->pool, buf->string, ((void*)0), 0);
 next(buf);

 white(buf);
 expect(buf, ':');
 white(buf);

 p->value = parse_expr(buf);


 if (accept(buf, '!'))
 {
  white(buf);
  if (buf->lookahead != CSS_KEYWORD || strcmp(buf->string, "important"))
   fz_css_error(buf, "expected keyword 'important' after '!'");
  p->important = 1;
  next(buf);
  white(buf);
 }

 return p;
}
