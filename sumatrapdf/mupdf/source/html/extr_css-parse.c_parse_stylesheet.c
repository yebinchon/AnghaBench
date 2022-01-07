
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct lexbuf {scalar_t__ lookahead; int string; } ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_1__ fz_css_rule ;


 scalar_t__ CSS_KEYWORD ;
 scalar_t__ EOF ;
 scalar_t__ accept (struct lexbuf*,char) ;
 int next (struct lexbuf*) ;
 TYPE_1__* parse_at_font_face (struct lexbuf*) ;
 TYPE_1__* parse_at_page (struct lexbuf*) ;
 int parse_at_rule (struct lexbuf*) ;
 TYPE_1__* parse_ruleset (struct lexbuf*) ;
 int strcmp (int ,char*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_rule *parse_stylesheet(struct lexbuf *buf, fz_css_rule *chain)
{
 fz_css_rule *rule, **nextp, *tail;

 tail = chain;
 if (tail)
 {
  while (tail->next)
   tail = tail->next;
  nextp = &tail->next;
 }
 else
 {
  nextp = &tail;
 }

 white(buf);

 while (buf->lookahead != EOF)
 {
  if (accept(buf, '@'))
  {
   if (buf->lookahead == CSS_KEYWORD && !strcmp(buf->string, "page"))
   {
    next(buf);
    rule = *nextp = parse_at_page(buf);
    nextp = &rule->next;
   }
   else if (buf->lookahead == CSS_KEYWORD && !strcmp(buf->string, "font-face"))
   {
    next(buf);
    rule = *nextp = parse_at_font_face(buf);
    nextp = &rule->next;
   }
   else
   {
    parse_at_rule(buf);
   }
  }
  else
  {
   fz_css_rule *x = parse_ruleset(buf);
   if (x)
   {
    rule = *nextp = x;
    nextp = &rule->next;
   }
  }
  white(buf);
 }

 return chain ? chain : tail;
}
