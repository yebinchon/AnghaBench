
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lexbuf {char lookahead; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ fz_css_property ;


 char EOF ;
 scalar_t__ accept (struct lexbuf*,char) ;
 void* parse_declaration (struct lexbuf*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_property *parse_declaration_list(struct lexbuf *buf)
{
 fz_css_property *head, *tail;

 white(buf);

 if (buf->lookahead == '}' || buf->lookahead == EOF)
  return ((void*)0);

 head = tail = parse_declaration(buf);

 while (accept(buf, ';'))
 {
  white(buf);

  if (buf->lookahead != '}' && buf->lookahead != ';' && buf->lookahead != EOF)
  {
   tail = tail->next = parse_declaration(buf);
  }
 }

 return head;
}
