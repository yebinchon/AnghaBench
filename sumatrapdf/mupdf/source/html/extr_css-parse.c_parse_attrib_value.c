
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {scalar_t__ lookahead; int string; int pool; int ctx; } ;


 scalar_t__ CSS_KEYWORD ;
 scalar_t__ CSS_STRING ;
 int fz_css_error (struct lexbuf*,char*) ;
 char* fz_pool_strdup (int ,int ,int ) ;
 int next (struct lexbuf*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static char *parse_attrib_value(struct lexbuf *buf)
{
 char *s;

 if (buf->lookahead == CSS_KEYWORD || buf->lookahead == CSS_STRING)
 {
  s = fz_pool_strdup(buf->ctx, buf->pool, buf->string);
  next(buf);
  white(buf);
  return s;
 }

 fz_css_error(buf, "expected attribute value");
}
