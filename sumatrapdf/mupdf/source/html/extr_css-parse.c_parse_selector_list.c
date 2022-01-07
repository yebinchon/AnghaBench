
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lexbuf {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ fz_css_selector ;


 scalar_t__ accept (struct lexbuf*,char) ;
 void* parse_selector (struct lexbuf*) ;
 int white (struct lexbuf*) ;

__attribute__((used)) static fz_css_selector *parse_selector_list(struct lexbuf *buf)
{
 fz_css_selector *head, *tail;

 head = tail = parse_selector(buf);
 while (accept(buf, ','))
 {
  white(buf);
  tail = tail->next = parse_selector(buf);
 }
 return head;
}
