
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lexbuf {int lookahead; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ fz_css_condition ;


 scalar_t__ iscond (int ) ;
 void* parse_condition (struct lexbuf*) ;

__attribute__((used)) static fz_css_condition *parse_condition_list(struct lexbuf *buf)
{
 fz_css_condition *head, *tail;

 head = tail = parse_condition(buf);
 while (iscond(buf->lookahead))
 {
  tail = tail->next = parse_condition(buf);
 }
 return head;
}
