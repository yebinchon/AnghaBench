
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {struct TYPE_5__* b; } ;
typedef TYPE_1__ js_Ast ;


 void* LIST (int ) ;
 scalar_t__ jsP_accept (int *,char) ;
 TYPE_1__* jsP_list (TYPE_1__*) ;
 int vardec (int *,int) ;

__attribute__((used)) static js_Ast *vardeclist(js_State *J, int notin)
{
 js_Ast *head, *tail;
 head = tail = LIST(vardec(J, notin));
 while (jsP_accept(J, ','))
  tail = tail->b = LIST(vardec(J, notin));
 return jsP_list(head);
}
