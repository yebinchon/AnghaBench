
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lookahead; } ;
typedef TYPE_1__ js_State ;
struct TYPE_9__ {struct TYPE_9__* b; } ;
typedef TYPE_2__ js_Ast ;


 void* LIST (int ) ;
 TYPE_2__* jsP_list (TYPE_2__*) ;
 int scriptelement (TYPE_1__*) ;

__attribute__((used)) static js_Ast *script(js_State *J, int terminator)
{
 js_Ast *head, *tail;
 if (J->lookahead == terminator)
  return ((void*)0);
 head = tail = LIST(scriptelement(J));
 while (J->lookahead != terminator)
  tail = tail->b = LIST(scriptelement(J));
 return jsP_list(head);
}
