
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lexbuf {char lookahead; int pool; int ctx; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ fz_css_value ;


 char EOF ;
 scalar_t__ accept (struct lexbuf*,char) ;
 void* fz_new_css_value (int ,int ,char,char*) ;
 void* parse_term (struct lexbuf*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_value *parse_expr(struct lexbuf *buf)
{
 fz_css_value *head, *tail;

 head = tail = parse_term(buf);

 while (buf->lookahead != '}' && buf->lookahead != ';' && buf->lookahead != '!' &&
   buf->lookahead != ')' && buf->lookahead != EOF)
 {
  if (accept(buf, ','))
  {
   white(buf);
   tail = tail->next = fz_new_css_value(buf->ctx, buf->pool, ',', ",");
   tail = tail->next = parse_term(buf);
  }
  else if (accept(buf, '/'))
  {
   white(buf);
   tail = tail->next = fz_new_css_value(buf->ctx, buf->pool, '/', "/");
   tail = tail->next = parse_term(buf);
  }
  else
  {
   tail = tail->next = parse_term(buf);
  }
 }

 return head;
}
