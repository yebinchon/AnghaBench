
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char lookahead; } ;
typedef TYPE_1__ js_State ;
struct TYPE_10__ {struct TYPE_10__* b; } ;
typedef TYPE_2__ js_Ast ;


 void* LIST (int ) ;
 int assignment (TYPE_1__*,int ) ;
 scalar_t__ jsP_accept (TYPE_1__*,char) ;
 TYPE_2__* jsP_list (TYPE_2__*) ;

__attribute__((used)) static js_Ast *arguments(js_State *J)
{
 js_Ast *head, *tail;
 if (J->lookahead == ')')
  return ((void*)0);
 head = tail = LIST(assignment(J, 0));
 while (jsP_accept(J, ',')) {
  tail = tail->b = LIST(assignment(J, 0));
 }
 return jsP_list(head);
}
