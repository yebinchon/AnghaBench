
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char lookahead; } ;
typedef TYPE_1__ js_State ;
struct TYPE_9__ {struct TYPE_9__* b; } ;
typedef TYPE_2__ js_Ast ;


 void* LIST (int ) ;
 char TK_CASE ;
 char TK_DEFAULT ;
 TYPE_2__* jsP_list (TYPE_2__*) ;
 int statement (TYPE_1__*) ;

__attribute__((used)) static js_Ast *statementlist(js_State *J)
{
 js_Ast *head, *tail;
 if (J->lookahead == '}' || J->lookahead == TK_CASE || J->lookahead == TK_DEFAULT)
  return ((void*)0);
 head = tail = LIST(statement(J));
 while (J->lookahead != '}' && J->lookahead != TK_CASE && J->lookahead != TK_DEFAULT)
  tail = tail->b = LIST(statement(J));
 return jsP_list(head);
}
