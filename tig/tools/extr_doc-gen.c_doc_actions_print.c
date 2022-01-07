
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct doc_action_iterator {int member_0; } ;


 int doc_action_print ;
 int doc_action_table_print (int) ;
 int foreach_request (int ,struct doc_action_iterator*) ;

__attribute__((used)) static void
doc_actions_print(void)
{
 struct doc_action_iterator iterator = { 0 };

 foreach_request(doc_action_print, &iterator);
 doc_action_table_print(0);
}
